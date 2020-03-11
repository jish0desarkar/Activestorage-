class User < ApplicationRecord
    has_one_attached :pdf
    # after_save :generate
    # def generate

        
        # PdfGeneratorJob.perform_later(self)

    #     pdf_file = Prawn::Document.new
    # pdf_file.text "sdfsdfsdf"
    # file = pdf_file.render_file Rails.root.join("public/test.pdf")
    # pdf_path = File.open Rails.root.join("public/test.pdf")
    # self.pdf.attach(io: pdf_path, content_type: 'application/pdf', filename: 'test.pdf')



        
        # pdf_file = Prawn::Document.new
        # pdf_file.text "Hello"
        # file = pdf_file.render_file Rails.root.join("public/test.pdf")
        # pdf_new = Prawn::Document.new
        # pdf_path = File.open Rails.root.join("public/test.pdf")
        # pdf.attach(io: pdf_path, content_type: 'application/pdf', filename: 'test.pdf')
        # # pdf_new.analyze
    # end
end