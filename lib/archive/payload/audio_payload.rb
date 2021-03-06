module Archive

  #
  # Adds Audio payload fields:
  #   creator, description, taper, source, runtime, date, and notes.
  #
  module AudioPayloadMetadata
    def self.included base
      base.required_attributes += [
        :creator, :description, :taper, :source, :runtime, :date, :notes
      ]
    end
  end

  # Metadata for an Audio payload
  #
  # Includes by default fields from GenericPayload and
  # AudioPayloadMetadata
  #
  class AudioPayload < GenericPayload
    include AudioPayloadMetadata
  end
end

