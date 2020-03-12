class PdfGeneratorJob < ApplicationJob
  queue_as :default

  def perform(user)
    pdf_file = Prawn::Document.new
    text "Normal width:"
    table [%w[A B C]]
    move_down 20
    text "Fixed width:"
    table([%w[A B C]], :width => 300)
    move_down 20
    text "Normal width:"
    table([["A", "Blah " * 20, "C"]])
    move_down 20
    text "Fixed width:"
    table([["A", "Blah " * 20, "C"]], :width => 300)
     
    #  pdf_file.text "YOUR RESUME
    #  Name: #{user.name}
    #  School: #{user.school}
    #  Date of Passing: #{user.passout}
    #  College: #{user.college}" 
    # "Date of Passing: #{user.passout}"
    # "College: #{user.college}"

    sleep 10
              
    file = pdf_file.render_file Rails.root.join("public/test-#{user.name}.pdf")
    pdf_path = File.open Rails.root.join("public/test-#{user.name}.pdf")
    user.pdf.attach(io: pdf_path, content_type: 'application/pdf', filename: "Resume of #{user.name}.pdf")
    # pdf_new.analyze
  end
end