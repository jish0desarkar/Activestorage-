# class ReportWorker
#     include Sidekiq::Worker
#     sidekiq_options retry: false 
#     def perform(user)
        
#         pdf_file = Prawn::Document.new
#             pdf_file.text "asd"
#             # "Date of Passing: #{user.passout}"
#             # "College: #{user.college}"
                  
#         file = pdf_file.render_file Rails.root.join("public/test.pdf")
#         pdf_path = File.open Rails.root.join("public/test.pdf")
    
#         user.pdf.attach(io: pdf_path, content_type: 'application/pdf', filename: "Resume of.pdf")
       
#       end
# end