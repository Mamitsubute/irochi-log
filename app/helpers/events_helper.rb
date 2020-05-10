module EventsHelper
    def show_crown(top_num, user_num)
      tag.i class: "fas fa-crown", style: "color: orange;" if top_num == user_num
    end

    def irochi_percentage(got_num, irochi_num)
      ((irochi_num.to_f/got_num) * 100).round(1)
    end
end
