RSpec.describe TouchP do
  it "has a version number" do
    expect(TouchP::VERSION).not_to be nil
  end

  describe '#exe' do
    let(:test_dir) { "tmp/" }
    let(:argv) { file_paths.map{|a| test_dir + a} }

    before do
      FileUtils.mkdir("tmp")
    end

    after do
      FileUtils.rm_r("tmp/")
    end

    context "when file_path is like 'hoge'" do
      let(:file_paths) { ["hoge"] }
      it {
        TouchP.touch_p(argv)
        expect(File.file?(*argv)).to eq true
        expect(Dir.exist?(*argv)).to eq false
      }
    end

    context "when file_path is like 'hoge/'" do
      let(:file_paths) { ["hoge/"] }
      it {
        TouchP.touch_p(argv)
        expect(File.file?(*argv)).to eq false
        expect(Dir.exist?(*argv)).to eq true
      }
    end

    context "when file_path is like 'hoge/hoge'" do
      let(:file_paths) { ["hoge/hoge"] }
      it {
        TouchP.touch_p(argv)
        expect(File.file?(*argv)).to eq true
      }
    end

    context "with multiple file_paths" do
      let(:file_paths) { ["hoge", "hogehoge/hoge", "hogehogehoge/hogehoge/hoge"] }
      it {
        TouchP.touch_p(argv)
        argv.each do |a|
          expect(File.file?(a)).to eq true
        end
      }
    end
  end
end
