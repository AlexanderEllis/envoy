#pragma once

#include "envoy/filesystem/filesystem.h"

#include "source/server/admin/admin_html_util.h"
#include "source/server/admin/stats_render.h"

namespace Envoy {
namespace Server {

class StatsHtmlRender : public StatsTextRender {
public:
  StatsHtmlRender(Http::ResponseHeaderMap& response_headers, Buffer::Instance& response,
                  const StatsParams& params);

  /**
   * Writes the header and starts the body for a stats page based on the
   * supplied stats parameters.
   *
   * @param url_handler The stats URL handler.
   * @param params The parameters for the stats page.
   * @param response The buffer in which to write the HTML.
   */
  void setupStatsPage(const Admin::UrlHandler& url_handler, const StatsParams& params,
                      Buffer::Instance& response);

  // StatsTextRender
  void noStats(Buffer::Instance&, absl::string_view types) override;
  void generate(Buffer::Instance& response, const std::string& name,
                const std::string& value) override;

  // This matches the superclass impl exactly, but is needed to allow gcc to compile, which
  // warns about hidden overrides if we omit it.
  void generate(Buffer::Instance& response, const std::string& name, uint64_t value) override {
    StatsTextRender::generate(response, name, value);
  }

  // We override the generate method for HTML to trigger some JS that will
  // render the histogram graphically. We will render that from JavaScript
  // and convey the histogram data to the JS via JSON, so we can delegate
  // to an instantiated JSON `sub-renderer` that will write into json_data_.
  void generate(Buffer::Instance&, const std::string& name,
                const Stats::ParentHistogram& histogram) override {
    histogram_json_render_->generate(json_data_, name, histogram);
  }

  void finalize(Buffer::Instance&) override;

private:
  const bool active_{false};
  Buffer::OwnedImpl json_data_;
  std::unique_ptr<StatsJsonRender> histogram_json_render_;
  Http::ResponseHeaderMapPtr json_response_headers_; // ignored.
  std::unique_ptr<Http::ResponseHeaderMap> json_headers_;
};

} // namespace Server
} // namespace Envoy
