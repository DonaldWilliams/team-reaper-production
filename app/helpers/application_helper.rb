module ApplicationHelper
  def display_flash
    capture_haml do
      flash.each do |type, message|
        message_class = case type
        when 'notice'
          'success'
        when 'alert'
          'warning'
        when 'error'
          'danger'
        else
          'info'
        end
        haml_tag :div, class: "alert alert-#{message_class} fade in" do
          haml_tag :a, '&times;'.html_safe, class: 'close', "data-dismiss" => "alert", "aria-label" => "close"
          haml_concat message
        end
      end
    end
  end

  def errors_for(object, dismissal=true)
    capture_haml do
      if object.errors.any?
        haml_tag :div, class: 'row' do
          haml_tag :div, class: 'col-sm-12' do
            haml_tag :div, class: 'errors' do
              haml_tag :div, class: 'alert alert-danger' do
                object_name = t("models.#{object.class.name.underscore.downcase}", default: object.class.name.titleize)
                if dismissal
                  haml_tag :a, '&times;'.html_safe, class: 'close', "data-dismiss" => "alert", "aria-label" => "close"
                end
                haml_tag :p, "#{pluralize(object.errors.count, 'error')} prohibited this #{object_name} from being saved"
                haml_tag :ul do
                  object.errors.full_messages.each do |error|
                    haml_tag :li, error
                  end
                end
              end
            end
          end
        end
      end
    end
  end

end
