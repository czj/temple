require 'spec_helper'

describe Temple::Templates::Tilt do
  it 'should report the default mime type before any template is created' do
    template = Temple::Templates::Tilt(Temple::ERB::Engine)
    expect(template.default_mime_type).to eq('text/html')
  end

  it 'should report a custom mime type before any template is created' do
    template = Temple::Templates::Tilt(Temple::ERB::Engine, mime_type: 'text/plain')
    expect(template.metadata[:mime_type]).to eq('text/plain')
  end
end
