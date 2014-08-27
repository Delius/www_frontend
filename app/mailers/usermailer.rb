class Usermailer < ActionMailer::Base
  default from: "support@chronicdiseases.org.uk"

  def workcreated_emai(work)
  	@work = work
  	mail(to: work.project.user.email, subject: "Work item Posted")
  end

  def projectupdated_email(project)
  	@project = project
  	mail(to: project.user.email, subject: "Project Updated")
 end
end