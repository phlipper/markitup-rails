require "minitest_helper"

module Markitup::Rails
  describe PreviewController do
    describe "POST preview" do
      before { post :preview, data: "foo" }

      it { assert_response :success }
      it { assigns[:content].must_equal "foo" }
    end
  end
end
