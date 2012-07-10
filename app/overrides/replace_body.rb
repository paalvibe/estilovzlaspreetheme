Deface::Override.new(:virtual_path => %q{spree/layouts/spree_application},
                          :name => %q{replace_body},
                          :replace => %q{[data-hook='body']},
                          :closing_selector => %q{},
                          :text => %q{<body id="<%= (@body_id == 'signup' ? 'checkout' : @body_id) || controller.controller_name %>">
  <div id="outer-container" style="margin: 0 auto; background: url('/assets/store/homepage/bg.png') repeat-x scroll center top #424242; width: 1000px; overflow: auto; padding-bottom: 60px;">
    <div id="container">
        <header style="height: 67px; margin-top: 57px; background: none">
          <%= link_to image_tag("store/estilovzlalogo2.png", :width => "321", :height => "100", :alt => "EstiloVZLA", :id => "logo", :style => "margin-top: -46px; clip: rect(0px, 321px, 90px, 0px)"), root_url %>
          <nav style="top: -40px">
            <%= link_to t("products"), products_path %>
            <% if current_user %>
              <%= link_to t('my_account'), account_path, :class => "cart" %>
              <%= link_to t('logout'), destroy_user_session_path, :class => "cart", :method => :delete %>
            <% else %>
              <%= link_to t('log_in'), login_path, :class => "cart" %>
            <% end %>
            <%= link_to_cart %>
          </nav>
          <form action="#" >
          </form>
          <%= form_tag products_url, :method => :get do %>
            <input type="search" id="s1" class="empty" name="keywords" placeholder="Buscar en EstiloVZLA" style="margin-top: 2px; margin-left: 430px">
          <% end %>
        </header>
        
        <% if content_for?(:banner) %>
          <div id="banner" role="banner">
            <%= yield :banner %>
          </div>
        <% end %>
        
        <div id="main" role="main">
          <% if flash.notice %>
            <div class="flash notice"><%= flash.notice %></div>
          <% end %>
          <% if flash[:error] %>
            <div class="flash errors"><%= flash[:error] %></div>
          <% end %>
        
          <%= yield %>
        </div>
        
        <% if content_for?(:sidebar) %>
          <div id="sidebar" role="sidebar">
            <%= yield :sidebar %>
          </div>
        <% end %>
        
    </div>
  </div>

    <footer data-hook="footer" style="margin-top: 0px; width: 1000px; margin: 0 auto;">
      <div class="inner" style="height: 200px">
        <div id="contact-us">
          <h3>Contact Us</h3>
          <p>
           0416 939 4436<br>
          <a href="mailto:ventas@estilovzla.com">sales@estilovzla.com</a>
          </p>
        </div>
    
        <div id="social">
          <h3>Social</h3>
          <p>
          <a href="http://www.facebook.com/pages/EstiloVZLA/335067923175897" id="facebook"><span>Facebook</span></a>
          <a href="http://twitter.com/estilovzla" id="twitter"><span>Twitter</span></a>
          </p>
        </div>
    
        <div id="menu">
          <h3>Menu</h3>
          <p>
          <a href="/about">Acerca de</a><br />
          </p>
        </div>
    
        <p id="copyright">&copy; Copyright <%= Time.zone.now.year %> Estilo VZLA. Todos los derechos reservados</p>    
      </div>
    </footer>
</body>})
