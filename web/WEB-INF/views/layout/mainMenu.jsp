<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!-- ==================== MAIN MENU ==================== -->
<div class="mainmenu">
  <div class="container-fluid">
    <ul class="nav">
      <li class="collapseMenu"><a href="#"><i class="icon-double-angle-left"></i>hide menu<i class="icon-double-angle-right deCollapse"></i></a></li>
      <li class="divider-vertical firstDivider"></li>
      <li class="left-side" id="dashboard"><a href="index.html"><i class="icon-dashboard"></i> DASHBOARD</a></li>
      <li class="divider-vertical"></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="formElements"><i class="icon-list"></i> FORMS <span class="label label-pressed">3</span></a>
        <ul class="dropdown-menu">
          <li><a tabindex="-1" href="common-form.html">COMMON ELEMENTS</a></li>
          <li><a tabindex="-1" href="validation-form.html">VALIDATION</a></li>
          <li><a tabindex="-1" href="form-wizard.html">WIZARD</a></li>
        </ul>
      </li>
      <li class="divider-vertical"></li>
      <li class="dropdown active">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="interface"><i class="icon-pencil"></i> INTERFACE <span class="label label-pressed">2</span></a>
        <ul class="dropdown-menu">
          <li><a href="interface.html">UI ELEMENTS</a></li>
          <li><a tabindex="-1" href="typography.html">TYPOGRAPHY</a></li>
        </ul>
      </li>
      <li class="divider-vertical"></li>
      <li id="buttonsIcons"><a href="buttons.html"><i class="icon-tint"></i> BUTTONS & ICONS</a></li>
      <li class="divider-vertical"></li>
      <li id="gridLayout"><a href="grid.html"><i class="icon-th"></i> GRID LAYOUT</a></li>
      <li class="divider-vertical"></li>
      <li id="tables"><a href="tables.html"><i class="icon-th-large"></i> TABLES</a></li>
      <li class="divider-vertical"></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="samplePages"><i class="icon-globe"></i> EXAMPLE PAGES <span class="label label-pressed">6</span></a>
        <ul class="dropdown-menu">
          <li><a tabindex="-1" href="login.html">LOGIN PAGE</a></li>
          <li><a tabindex="-1" href="calendar.html">CALENDAR</a></li>
          <li><a tabindex="-1" href="404.html">PAGE 404</a></li>
          <li><a tabindex="-1" href="gallery.html">GALLERY</a></li>
          <li class="dropdown-submenu">
            <a href="#">MAIL</a>
            <ul class="dropdown-menu">
              <li><a href="mail.html">Vertical View</a></li>
              <li><a href="mail-horizontal.html">Horizontal View</a></li>
            </ul>
          </li>
          <li class="dropdown-submenu">
            <a href="#">MAPS</a>
            <ul class="dropdown-menu">
              <li><a href="vectormaps.html">Vector Maps</a></li>
              <li><a href="gmaps.html">Google Maps</a></li>
            </ul>
          </li>                            <li class="dropdown-submenu">
          <a href="#">SECOND LEVEL</a>
          <ul class="dropdown-menu">
            <li><a href="#">Second level link</a></li>
            <li><a href="#">Second level link</a></li>
            <li><a href="#">Second level link</a></li>
            <li class="dropdown-submenu">
              <a href="#">THIRD LEVEL</a>
              <ul class="dropdown-menu">
                <li><a href="#">Second level link</a></li>
                <li><a href="#">Second level link</a></li>
                <li><a href="#">Second level link</a></li>
              </ul>
            </li>
          </ul>
        </li>
        </ul>
      </li>
      <li class="divider-vertical"></li>
      <li><a href="widgets.html" id="widgets"><i class="icon-play-circle"></i> WIDGETS</a></li>
      <li class="divider-vertical"></li>
      <li class="right-side" id="chartsGraphs"><a href="charts.html"><i class="icon-bar-chart"></i> CHARTS & GRAPHS </a></li>
      <li class="divider-vertical"></li>
    </ul>
  </div>
</div>
<!-- ==================== END OF MAIN MENU ==================== -->

<!-- ==================== DROPDOWN MENU FOR MOREOPTIONS ICON (hidden state) ==================== -->
<ul class="dropdown-menu" id="moreOptionsMenu">
  <li class="dropdown-submenu">
    <a href="#">More options</a>
    <ul class="dropdown-menu">
      <li><a href="#">Second level link</a></li>
      <li><a href="#">Second level link</a></li>
      <li><a href="#">Second level link</a></li>
      <li><a href="#">Second level link</a></li>
      <li><a href="#">Second level link</a></li>
    </ul>
  </li>
  <li><a href="#">Another action</a></li>
  <li><a href="#">Something else here</a></li>
</ul>
<!-- ==================== END OF DROPDOWN MENU ==================== -->
