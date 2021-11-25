module Searchable
  def search
    if params.dig(:query, :sport).present?
      @fields = @fields.where(sports: { name: params.dig(:query, :sport) })
    end

    # if params.dig(:query, :address).present?
    #   @fields = @fields.where(address: params.dig(:query, :address) })
    # end
  end
end
