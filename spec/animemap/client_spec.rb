require 'spec_helper'

describe Animemap::Client do
  describe '#find_programs_by_area' do
    context '正常実行' do
      let(:res) do
        c = Animemap::Client.new
        c.find_programs_by_area('tokyo')
      end

      it { expect(res[0]).to have_key(:title) }
    end
  end
end