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
            <h4 class="page-title">Perbarui Stok - Bahan Baku</h4>
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
                    <a href="<?= base_url(getBeforeLastSegment('', 2) . '/' . getBeforeLastSegment('', 1)) ?>">Data Bahan Baku</a>
                </li>
                <li class="separator">
                    <i class="flaticon-right-arrow"></i>
                </li>
                <li class="nav-item">
                    <a href="<?= base_url(getBeforeLastSegment('', 2) . '/' . getBeforeLastSegment('', 1)) ?>">Data Inventory</a>
                </li>
                <li class="separator">
                    <i class="flaticon-right-arrow"></i>
                </li>
                <li class="nav-item">
                    <a href="<?= current_url() ?>">Perbarui Stok</a>
                </li>
            </ul>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">

                        <?php
                        $attributes = ['id' => 'form_barang_masuk'];
                        echo form_open_multipart('data-gudang/data-inventory-barang-mentah/insert', $attributes); ?>
                        <div class="form-group">
                            <label for="material_id">Kode - Nama Bahan Baku</label>
                            <select class="form-control material_id" id="material_id" name="material_id">
                                <?php foreach ($data_barang_kimia as $row) {
                                ?>
                                    <option value="<?= $row->id; ?>"><?= $row->material_code . " - " . $row->full_name; ?></option>
                                <?php
                                }; ?>


                            </select>
                            <?= form_error('material_code', '<small class="text-danger pl-3">', '</small>'); ?>
                        </div>
                        <div class="form-group">
                            <label for="store">Lokasi Penyimpanan</label>
                            <input type="text" class="form-control store    " name="store" id="store" value="Gudang Pusat" readonly disabled>
                        </div>

                        <div class="form-group">
                            <label for="store">Status</label>
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check form-check-inline" type="radio" name="status" id="tambah" value="tambah" checked>
                                    <label class="form-check-label" for="tambah">
                                        Penambahan Barang
                                    </label>

                                    <input class="form-check form-check-inline" type="radio" name="status" id="kurang" value="kurang">
                                    <label class="form-check-label" for="kurang">
                                        Pengurangan Barang
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="quantity">Jumlah</label>
                            <input type="tel" class="form-control quantity" id="quantity" placeholder="Masukkan jumlah bahan baku" name="quantity" data-filter="\+?\d{0,10}" autofocus required>
                            <?= form_error('quantity', '<small class="text-danger pl-3">', '</small>'); ?>
                        </div>
                        <!-- <div class="form-group">
                            <label for="suplier">Suplier</label>
                            <input type="text" class="form-control suplier" id="suplier" placeholder="Masukkan penginput" name="suplier" required>
                            <?= form_error('suplier', '<small class="text-danger pl-3">', '</small>'); ?>
                        </div> -->

                        <div id="alert-msg"></div>
                    </div>
                    <div class="card-action">
                        <button type="submit" name="submit" id="submit_barang_masuk" class="btn btn-success">Simpan</button>
                        <input type="hidden" name="id" class="id"></input>
                        <a href="<?= base_url('data-gudang/data-inventory-barang-mentah/'); ?>" type="button" class="btn btn-outline-danger" data-dismiss="modal">Batal</a>
                    </div>
                    <?= form_close(); ?>
                </div>
            </div>
        </div>
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
            echo form_open_multipart('data-gudang/data-inventory-barang-mentah/insert', $attributes); ?>


            <div class="modal-body">
                <div class="form-group">
                    <label for="material_id">Kode Bahan</label>
                    <select class="form-control material_id" id="material_id" name="material_id">
                        <?php foreach ($data_barang_kimia as $row) {
                        ?>
                            <option value="<?= $row->id; ?>"><?= $row->id . "-" . $row->full_name; ?></option>
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