class Api::ThirdPartyController < ApplicationController
  def index
    response = HTTP.get("https://owlbot.info/api/v4/dictionary/owl")

    @definitions = response.parse
    render "index.json.jb"
  end
end
