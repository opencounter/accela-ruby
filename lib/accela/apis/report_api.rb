module Accela
  class ReportAPI < APIGroup
    as_class_method :create_report

    def create_report(id: nil, module_name: nil, payload: nil)
      unless id && module_name && payload
        raise BadRequestError.new("Must supply ID and module_name and payload")
      end
      query = { module: module_name}
      Accela::V4::CreateReport.result(id, query, payload)
    end
  end
end
