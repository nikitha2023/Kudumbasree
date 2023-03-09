<div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <div class="d-flex justify-content-between">
                        <div class="logo">
							
                         <h6> Welcome</h6><h4><?php session_start(); echo ucfirst($_SESSION['userName']); ?></h4>
                        </div>
                        <div class="toggler">
                            <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                        </div>
                    </div>
                </div>
                <div class="sidebar-menu">
                    <ul class="menu">
                       
                        <li class="sidebar-item active ">
                            <a href="UserHome.php" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>

                        <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-stack"></i>
                                <span>PROFILE</span>
                            </a>
                            <ul class="submenu ">
                                <li class="submenu-item ">
                                    <a href="userViewProfile.php">VIEW PROFILE</a>
                                </li>

                            </ul>
                        </li>

                        <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-collection-fill"></i>
                                <span>PURCHASE</span>
                            </a>
                            <ul class="submenu ">
                                <li class="submenu-item ">
                                    <a href="userViewOrder.php">VIEW ORDER</a>
                                </li>

                            </ul>
                        </li>

                        <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-grid-1x2-fill"></i>
                                <span>CART</span>
                            </a>
                            <ul class="submenu ">
                                <li class="submenu-item ">
                                    <a href="userViewCart.php">VIEW CART</a>
                                </li>
                                
                               
                            </ul>
                        </li>

                       
						<li class="sidebar-item  ">
                            <a href="userLogout.php" class='sidebar-link'>
                               <i class="bi bi-box-arrow-right"></i>
                                <span>LOGOUT</span>
                            </a>
                        </li>
                       


                 
                    </ul>
                </div>
                <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
            </div>
        </div>