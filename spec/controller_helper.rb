module ControllerHelper
  def parse_response_body
    Oj.load(response.body)
  end
end
