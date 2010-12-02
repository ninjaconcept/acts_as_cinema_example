class Video < ActiveRecord::Base
  attr_accessible :title, :url, :description, :original_input, :source_param
  acts_as_cinema :height => 400, :width => 600, :allow_full_screen => false,
                 # You can use a method
                 :tag_template => :aac_tag
                 # Or directly assign a string to the :tag_template option
                 #
                 # :tag_template => %{
                 #   <object width="<%= width %>" height="<%= height %>">
                 #     <param name="movie" value="<%= video_url %>"></param>
                 #     <param name="allowFullScreen" value="<%= allow_full_screen %>"></param>
                 #     <param name="bgcolor" value="#ffffff"></param>
                 #     <param name="allowscriptaccess" value="always"></param>
                 #     <embed src="<%= video_url %>" type="application/x-shockwave-flash" allowscriptaccess="always" 
                 #       allowfullscreen="<%= allow_full_screen %>" width="<%= width %>" height="<%= height %>" wmode="transparent">
                 #     </embed>
                 #   </object>
                 # }
                 
  
  
  
  private  
    # You can customize the tag here
    def aac_tag
      %{
        <object width="<%= width %>" height="<%= height %>">
          <param name="movie" value="<%= video_url %>"></param>
          <param name="allowFullScreen" value="<%= allow_full_screen %>"></param>
          <param name="bgcolor" value="#ffffff"></param>
          <param name="allowscriptaccess" value="always"></param>
          <embed src="<%= video_url %>" type="application/x-shockwave-flash" allowscriptaccess="always" 
            allowfullscreen="<%= allow_full_screen %>" width="<%= width %>" height="<%= height %>" wmode="transparent">
          </embed>
        </object>
      }
    end
  
end