            <div class="content">
              <div class="page-inner">

                <div class="row">
                  <div class="col-md-12">
                    <div class="card">

                      <div class="card-header">
                        <div class="d-flex align-items-center">
                          <h4 class="card-title font-weight-bold"><?= $title ?></h4>
                          <div class="ml-auto">
                            <?php if (role_access($this->session->role_id, ['1','2']) == 1) :?>
                              <a href=<?= current_url() . '/tambah' ?> class="btn btn-default btn-sm ml-auto">
                                <i class="fa fa-cog mr-2"></i>
                                <span class="h6">Tambah stok</span>
                              </a>
                            <?php endif; ?>
                            <div class="btn-group dropleft" data-toggle="tooltip" title="Opsi">
                              <button type="button" class="btn btn-sm btn-light ml-1 mr-2 px-3 py-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="h2"><i class="fas fa-ellipsis-v text-info"></i></span>
                              </button>
                              <div class="dropdown-menu">
                                <a class="dropdown-item" href="<?= base_url("generate-report/pdf/export?mode=all&menu=master_produk") ?>" target=_blank><i class="fas fa-file-pdf mr-2 text-danger"></i>Export to PDF</a>
                                <!-- <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<?= base_url("generate-report/pdf/export?mode=all&menu=master_produk") ?>" target=_blank><i class="fas fa-file-excel mr-2 text-success"></i>Generate Excel</a> -->
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <div class="card-header">
                        <div class="w-75 mx-auto">
                          <ul class="nav nav-pills nav-fill ">
                            <li class="nav-item" style="visibility:<?= ($this->session->store_id == '1') ? '' : 'hidden' ?>;">
                              <a class="nav-link <?= ($uniqid == 'all') ? 'active':''; ?>" href="?uniqid=all">Semua Lokasi</a>
                            </li>
                            <li class="nav-item" style="visibility:<?= ($this->session->store_id == '1') ? '' : 'hidden' ?>;">
                              <a class="nav-link <?= ($uniqid == '1') ? 'active':''; ?>" href="?uniqid=1">Gudang Pusat</a>
                            </li>
                            <li class="nav-item" style="visibility:<?= ($this->session->store_id == '2' OR $this->session->store_id == '1') ? 'visible' : 'hidden' ?>;">
                              <a class="nav-link <?= ($uniqid == '2') ? 'active':''; ?>" href="?uniqid=2">Toko Cabang Cicalengka</a>
                            </li>
                            <li class="nav-item" style="visibility:<?= ($this->session->store_id == '3' OR $this->session->store_id == '1') ? 'visible' : 'hidden' ?>;">
                              <a class="nav-link <?= ($uniqid == '3') ? 'active':''; ?>" href="?uniqid=3">Toko Cabang Ujung Berung</a>
                            </li>
                          </ul>
                        </div>
                      </div>

                      <div class="card-body">

                        <div class="table-responsive">
                          <table id="add-row" class="display table table-sm  table-hover">
                            <thead class="thead-light">
                              <tr>
                                <th class="px-3" rowspan="2" width="20px">No</th>
                                <th class="px-3" rowspan="2">Kode produk</th>
                                <th class="px-3" rowspan="2">Nama produk</th>
                                <th class="px-3" rowspan="2">Toko</th>
                                <th class="px-3" rowspan="2">Stok</th>
                                <th class="px-3" colspan="2"><center>Update terakhir</center></th>
                                <!-- <th class="" rowspan="2" style="width: 10%">
                                  <center>Aksi</center>
                                </th> -->
                              </tr>
                              <tr>
                                <th class="px-3">Tanggal</th>
                                <th class="px-3">Oleh siapa</th>
                              </tr>
                            </thead>
                            <tfoot class="thead-light">
                              <tr>
                                <th class="px-3" rowspan="2" width="20px">No</th>
                                <th class="px-3" rowspan="2">Kode produk</th>
                                <th class="px-3" rowspan="2">Nama produk</th>
                                <th class="px-3" rowspan="2">Toko</th>
                                <th class="px-3" rowspan="2">Stok</th>
                                <th class="px-3">Tanggal</th>
                                <th class="px-3">Oleh siapa</th>
                                <!-- <th class="" rowspan="2" style="width: 10%">
                                  <center>Aksi</center>
                                </th> -->
                              </tr>
                              <tr>
                                <th class="px-3" colspan="2"><center>Update terakhir</center></th>
                              </tr>
                            </tfoot>
                            <tbody>
                              <?php
                              if ($productInventory != FALSE) :
                                $i = 1;
                                foreach ($productInventory as $row) : ?>
                                  <?php 
                                  if ($row['updated_at'] === NULL) {
                                    $date[0] = '-';
                                  } else {
                                    $date = explode(" ", $row['updated_at']) ;
                                  } ?>
                                  <tr>
                                    <td class="px-3">
                                      <?= $i++ ?>
                                    </td>
                                    <td class="px-3">
                                      <?= $row['product_code'] ?>
                                    </td>
                                    <td class="px-3">
                                      <?= $row['full_name'] ?>
                                    </td>
                                    <td class="px-3">
                                      <?= $row['store_name'] ?>
                                    </td>
                                    <td class="px-3">
                                      <?= number_format($row['quantity'], 0, '', ',') ?>
                                    </td>
                                    <td class="px-3">
                                      <?= $date[0] ?>
                                    </td>
                                    <td class="px-3">
                                      <?php // null coalescing operator ?>
                                      <?= $row['updated_by']?>
                                    </td>

                                    <!-- <td class="">
                                      <div class="form-button-action justify-content-center d-flex">
                                        <?php
                                        // <a href=" current_url() . "/edit/{$row['id']}" " class="p-2 btn-link btn-primary" data-toggle="tooltip" title="Atur stok" data-original-title="Atur stok"><i class="fas fa-plus"></i></a>
                                        // <a href=" current_url() . "/edit/{$row['id']}" " class="p-2 btn-link btn-primary" data-toggle="tooltip" title="Ubah" data-original-title="Ubah"><i class="fa fa-edit"></i></a>
                                        // <a href=" current_url() . "/detail/{$row['id']}" " class="p-2 btn-link btn-default" data-toggle="tooltip" title="Lihat detail" data-original-title="Lihat detail"><i class="fas fa-eye"></i></a>
                                        // <span data-toggle="tooltip" title="Hapus" data-original-title="Hapus">
                                        //   <a href="#modal-delete-data" type="button" data-toggle="modal" data-target="#modal-delete-data" class="p-2 btn-link btn-danger btn-delete" data-id=" $row['id'] "><i class="fa fa-times"></i></a>
                                        // </span>
                                        ?>
                                      </div>
                                    </td> -->
                                  </tr>
                                <?php 
                                endforeach;
                              endif; ?>
                            </tbody>
                          </table>
                        </div>

                      </div>

                    </div>
                  </div>
                </div>

              </div>
            </div>

            <?php // modal untuk hapus data ?>
            <!-- <div class="modal fade" id="modal-delete-data" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h3 class="modal-title text-danger">Konfirmasi Hapus Data</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body my-3">
                    <h4>Yakin ingin menghapus data?</h4>
                  </div>
                  <form action="<?= current_url() . "/hapus" ?>" method="POST">
                    <div class="modal-footer">
                      <input type="hidden" name="id" class="id"></input>
                      <button class="btn btn-danger btn-border">Hapus Data</button>
                      <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                    </div>
                  </form>
                </div>
              </div>
            </div> -->
            <?php // /modal untuk hapus data ?>