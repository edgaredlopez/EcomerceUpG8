<aside class="main-sidebar" style="background-color: #072a3d;">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
   
  <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="<?php echo (!empty($admin['photo'])) ? '../images/'.$admin['photo'] : '../images/profile.jpg'; ?>" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p><?php echo $admin['firstname'].' '.$admin['lastname']; ?></p>
        <a><i class="fa fa-circle text-success"></i> En Linea</a>
        
      </div>
    </div>

    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree" style="background-color: ;">
     <!-- MENU PRINCIPAL -->
    <li class="header">APARTADO PRINCIPAL</li>
      <li><a href="home.php">
        <!-- <i class="fa fa-dashboard"></i>  -->
      <span>Escritorio principal</span>
      </a>
    </li>
      <li class="treeview middle">
      <li class="header">TODOS LOS INFORMES</li>    
      <li class="treeview middle">
      <a href="#">       
      <!-- <i class="fa fa-money"></i> -->
          <span>Consultar las ventas</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
        <li><a href="sales.php"><i class="fa fa-circle-o"></i> <span>Ventas por usuario</span></a></li>
      <li><a href="productsales.php"><i class="fa fa-circle-o"></i> <span>Productos vendidos</span></a></li>
            </ul>
      <!-- separar -->
      <li class="treeview">
        <a href="#">       
      <!-- <i class="fa fa-universal-access"></i> -->
          <span>Consultar las compras</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        
        <ul class="treeview-menu">
      <li><a class="a" href="sales.php"><i class="fa fa-circle-o"></i> <span>Consultar compras por fechas</span></a></li>
      </ul>
      <!-- separar -->
      

      <li class="header">GESTIONES</li>

        <li class="treeview">
          <a href="#">       
            <span>Usuarios y clientes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"> 
                
              </i>
            </span>
          </a>
        <ul class="treeview-menu">
          <li><a  class="a" href="users.php"><i class="fa fa-circle-o"></i> Usuarios</a></li>
          <li><a class="a" href="Customers.php"><i class="fa fa-circle-o"></i> Clientes</a></li>
        </ul>

         
     


      <!-- separar -->
      <li class="treeview">
        <a href="#">
          <!-- <i class="fa fa-folder"></i> -->
          <span>Almacen</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a  class="a" href="products.php" ><i class="fa fa-circle-o"></i> Productos</a></li>
          <li><a  class="a" href="category.php"><i class="fa fa-circle-o"></i> Categoría</a></li>
        </ul>
         <!-- separar -->
        <li class="treeview">
        <a href="#">       
      <!-- <i class="fa fa-shopping-cart"></i> -->
          <!-- <span>Compras</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
        <li><a  class="a" href="#"><i class="fa fa-circle-o"></i> Ingresos</a></li>
        <li><a  class="a" href="#"><i class="fa fa-circle-o"></i> Proveedores</a></li>
      </ul>
      <li class="treeview">
        <a href="#">        -->
      <!-- <i class="fa fa-shopping-bag"></i> -->
          <!-- <span>Ventas</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
      <li><a  class="a" href="#"><i class="fa fa-circle-o"></i> <span>Ventas</span></a></li>
      <li><a  class="a" href="#"><i class="fa fa-circle-o"></i> <span>Clientes</span></a></li>
      </ul> -->

      <!-- <li class="header">SOLICITAR</li>
      <li class="treeview.menu">
      <a href="https://www.facebook.com/profile.php?id=100010116841282"><i class="fa fa-question-circle"></i> <span>Ayuda</span><small class="label pull-right bg-yellow">PDF</small></a>  
      </li> -->
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>