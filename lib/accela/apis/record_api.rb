module Accela
  class RecordAPI < APIGroup
    as_class_method :get_records, :get_all_records, :create_record,
      :get_all_contacts_for_record, :create_record_fees

    def create_record(input)
      raw = input.is_a?(Hash) ? input : input.raw
      payload = RecordTranslator.ruby_to_json([raw])
      record_hash  = Accela::V4::CreateRecord.result(payload.first)
      input_hash = RecordTranslator.json_to_ruby([record_hash]).first
      Record.create(input_hash)
    end

    def get_records(*args)
      fetch_many(Accela::V4::GetRecords,
                 RecordTranslator,
                 Record,
                 *args)
    end

    def get_all_records(opts={})
      fetch_many(Accela::V4::GetAllRecords,
                 RecordTranslator,
                 Record,
                 opts)
    end

    def get_all_addresses_for_record
      fetch_has_many(Accela::V4::GetAllAddressesForRecord,
                     AddressTranslator,
                     Address)
    end

    def get_all_contacts_for_record
      fetch_has_many(Accela::V4::GetAllContactsForRecord,
                     ContactTranslator,
                     Contact)
    end

    def get_all_owners_for_record
      fetch_has_many(Accela::V4::GetAllOwnersForRecord,
                     OwnerTranslator,
                     Owner)
    end

    def get_all_parcels_for_record
      fetch_has_many(Accela::V4::GetAllParcelsForRecord,
                     ParcelTranslator,
                     Parcel)
    end

    def get_all_record_types
      fetch_many(Accela::V4::GetAllRecordTypes,
                 TypeTranslator,
                 Type)
    end

    def get_record_related(*args)
      fetch_has_many(Accela::V4::GetRecordsRelated, 
                      RecordIdTranslator, 
                      RecordId, 
                      *args)
    end

    def create_record_fees(record_id, input)
      raw = input.is_a?(Hash) ? input : input.raw
      payload = FeeTranslator.ruby_to_json([raw])
      fee_hash  = Accela::V4::CreateRecordFees.result(record_id, payload.first)
      input_hash = FeeTranslator.json_to_ruby([fee_hash]).first
      Fee.create(input_hash)
    end

  end
end
