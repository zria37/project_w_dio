<div class="content">
    <?php if ($this->session->flashdata('message_berhasil')) {
    ?>
        <div class="alert alert-success" role="alert">
            <?= $this->session->flashdata('message_berhasil'); ?>
        </div>
    <?php
    }; ?>
    <?php if ($this->session->flashdata('message_gagal')) {
    ?>
        <div class="alert alert-danger" role="alert">
            <?= $this->session->flashdata('message_gagal'); ?>
        </div>
    <?php
    }; ?>
    <div class="page-inner">
        <div class="page-header">
            <h4 class="page-title">Mutasi Transaksi - Bahan Baku</h4>
            <ul class="breadcrumbs">
                <li class="nav-home">
                    <a href="<?= base_url(); ?>">
                        <i class="flaticon-home"></i>
                    </a>
                </li>
                <li class="separator">
                    <i class="flaticon-right-arrow"></i>
                </li>
                <li class="nav-item">
                    <a href="<?= current_url() ?>">Data Bahan Baku</a>
                </li>
                <li class="separator">
                    <i class="flaticon-right-arrow"></i>
                </li>
                <li class="nav-item">
                    <a href="<?= current_url() ?>">Data Mutasi Transaksi</a>
                </li>
            </ul>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="card">

                    <!-- <div class="card-header">
                        <div class="w-100 mx-auto">
                            <ul class="nav nav-pills nav-fill ">
                                <li class="ml-4 nav-item" style="visibility:<?= ($this->session->store_id == '1') ? '' : 'hidden' ?>;">
                                    <a class="nav-link <?= (getLastSegment() == 'data-transaksi-barang') ? 'active':'' ?>" href="<?= base_url('data-gudang/data-transaksi-barang/'); ?>">Semua Data Mutasi</a>
                                </li>
                                <li class="nav-item" style="visibility:<?= ($this->session->store_id == '1') ? '' : 'hidden' ?>;">
                                    <a class="nav-link <?= (getLastSegment() == '1') ? 'active':'' ?>" href="<?= base_url('data-gudang/data-transaksi-barang/mutasi-by-store-id/1'); ?>">Mutasi Gudang Pusat</a>
                                </li>
                                <li class="nav-item" style="visibility:<?= ($this->session->store_id == '2' OR $this->session->store_id == '1') ? 'visible' : 'hidden' ?>;">
                                    <a class="nav-link <?= (getLastSegment() == '2') ? 'active':'' ?>" href="<?= base_url('data-gudang/data-transaksi-barang/mutasi-by-store-id/2'); ?>">Mutasi Toko Cicalengka</a>
                                </li>
                                <li class="nav-item" style="visibility:<?= ($this->session->store_id == '2' OR $this->session->store_id == '1') ? 'visible' : 'hidden' ?>;">
                                    <a class="nav-link <?= (getLastSegment() == '3') ? 'active':'' ?>" href="<?= base_url('data-gudang/data-transaksi-barang/mutasi-by-store-id/3'); ?>">Mutasi Toko Ujungberung</a>
                                </li>
                            </ul>
                        </div>
                    </div> -->
                    
                    <div class="card-head">
                        <div class="col-md-12 pt-3">
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="table-responsive">
                            <table id="add-row" class="display table table-sm  table-hover">
                                <thead class="thead-light">
                                    <tr>
                                        <th class="px-3" width="20px">No</th>
                                        <th class="px-3" width="30px">Kode Bahan</th>
                                        <th class="px-3">Nama Bahan</th>
                                        <th class="px-3">Toko</th>
                                        <th class="px-3">Kode Mutasi</th>
                                        <th class="px-3">Jumlah</th>
                                        <th class="px-3">Tipe Transaksi</th>
                                        <th class="px-3">Tanggal Transaksi</th>
                                        <th class="px-3">Diinput Oleh</th>
                                    </tr>
                                </thead>
                                <tfoot class="thead-light">
                                    <tr>
                                        <th class="px-3" width="20px">No</th>
                                        <th class="px-3" width="30px">Kode Bahan</th>
                                        <th class="px-3">Nama Bahan</th>
                                        <th class="px-3">Toko</th>
                                        <th class="px-3">Kode Mutasi</th>
                                        <th class="px-3">Jumlah</th>
                                        <th class="px-3">Tipe Transaksi</th>
                                        <th class="px-3">Tanggal Transaksi</th>
                                        <th class="px-3">Diinput Oleh</th>
                                    </tr>
                                </tfoot>
                                <tbody>

                                    <?php

                                    $i = 1;

                                    foreach ($data_transaksi_barang as $row) : ?>
                                        <tr>
                                            <td class="px-3">
                                                <?= $i++ ?>
                                            </td>
                                            <td class="px-3">
                                                <?= $row->material_code ?>
                                            </td>
                                            <td class="px-3">
                                                <?= $row->full_name ?>
                                            </td>
                                            <td class="px-3">
                                                <?= $row->store_name ?>
                                            </td>
                                            <td class="px-3">
                                                <?= $row->mutation_code ?>
                                            </td>
                                            <td class="px-3">
                                                <?= number_format($row->quantity, 0, '', ',') ?>
                                            </td>
                                            <td class="px-3 text-uppercase font-weight-bold <?= ($row->mutation_type == 'masuk') ? 'text-primary' : 'text-danger' ?>">
                                                <?= $row->mutation_type ?>
                                            </td>
                                            <td class="px-3">
                                                <?php $dt = explode(' ', $row->created_at);
                                                $d = date_create($dt[0]);
                                                echo date_format($d, "d-M-Y") ?>
                                            </td>
                                            <td class="px-3">
                                                <?= $row->created_by ?>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>

                    </div>











                    <!-- Modal Insert -->
                    <div class="modal fade" id="modalInsert" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Tambah Data Barang Kimia</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <?php
                                $attributes = ['id' => 'form_barang_masuk'];
                                echo form_open_multipart('data-gudang/data-barang-masuk/insert', $attributes); ?>


                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="material_id">Kode Bahan</label>
                                        <select class="form-control material_id" id="material_id" name="material_id">
                                            <?php foreach ($data_barang_kimia as $row) {
                                            ?>
                                                <option value="<?= $row->id; ?>"><?= $row->full_name; ?></option>
                                            <?php
                                            }; ?>


                                        </select>
                                        <?= form_error('material_code', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <label for="store">Toko</label>
                                        <select class="form-control store" id="store" name="store">
                                            <?php foreach ($data_store as $row) {
                                            ?>
                                                <option value="<?= $row->id; ?>"><?= $row->store_name; ?></option>
                                            <?php
                                            }; ?>
                                        </select>
                                        <?= form_error('material_code', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <label for="quantity">Jumlah</label>
                                        <input type="text" class="form-control quantity" id="quantity" placeholder="Masukkan jumlah barang" name="quantity" required>
                                        <?= form_error('quantity', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <label for="updated_by">Dimasukkan Oleh</label>
                                        <input type="text" class="form-control updated_by" id="updated_by" placeholder="Masukkan penginput" name="updated_by" required>
                                        <?= form_error('updated_by', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>

                                    <div id="alert-msg"></div>
                                </div>

                                <div class="modal-footer">
                                    <input type="hidden" name="id" class="id"></input>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Keluar</button>
                                    <button type="submit" name="submit" id="submit_barang_masuk" class="btn btn-primary">Masukkan Barang</button>
                                </div>
                                <?= form_close(); ?>


                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="modalKonfirmasi" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Konfirmasi Hapus Data</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>

                                <div class="modal-body">
                                    <h4>Yakin Ingin Menghapus Data ?</h4>
                                </div>

                                <form action="<?= base_url('data-gudang/data-barang-mentah/delete'); ?>" method="POST">
                                    <div class="modal-footer">
                                        <input type="hidden" name="id" class="id"></input>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                                        <button class="btn btn-outline-primary">Hapus Data</button>
                                    </div>
                                </form>



                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>