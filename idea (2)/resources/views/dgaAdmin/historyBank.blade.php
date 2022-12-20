@extends('dgaAdmin.app')
@section('main')
    <main id="main-container">
        <div class="content">
            <div
                class="d-flex flex-column flex-md-row justify-content-md-between align-items-md-center py-2 text-center text-md-start">
                <div class="flex-grow-1 mb-1 mb-md-0">
                    <h1 class="h3 fw-bold mb-2">
                        MOMO
                    </h1>
                    <h2 class="h6 fw-medium fw-medium text-muted mb-0">
                        Lịch sử chuyển tiền MOMO
                    </h2>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="block block-rounded">
                        <div class="block-header block-header-default">
                            <h3 class="block-title">
                                LỊCH SỬ CHUYỂN TIỀN
                            </h3>
                        </div>
                        <div class="block-content block-content-full">
                            <table class="table table-bordered table-striped table-vcenter js-dataTable-responsive">
                                <thead>
                                <tr>
                                    <th class="text-center">#</th>
                                    <th style="width: 10%;">Số MOMO</th>
                                    <th>Số tiền/Lỗi</th>
                                    <th>Chi tiết</th>
                                    <th>Trạng thái</th>
                                    <th style="width: 10%;">Ngày chuyển</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($history as $row)
                                    <tr>
                                        <td class="text-center fs-sm">{{ $row->id }}</td>
                                        <td class="fw-semibold fs-sm">{{ $row->phone }}</td>
                                        <td class="fs-sm">@if (json_decode($row->details)->status == 'success') <b class="fw-semibold fs-sm">@php echo number_format(json_decode($row->details)->data->amount) @endphp </b> VND @elseif(!empty(json_decode($row->details)->message)) @php echo json_decode($row->details)->message @endphp @endif</td>
                                        <td class="fw-semibold fs-sm"><textarea class="form-control form-control-alt">{{ $row->details }}</textarea></td>
                                        <td class="fw-semibold fs-sm">@if ($row->status == 1) <span class="fs-xs fw-semibold d-inline-block py-1 px-3 rounded-pill bg-success-light text-success">Thành công</span> @else <span class="fs-xs fw-semibold d-inline-block py-1 px-3 rounded-pill bg-danger-light text-danger">Thất bại</span> @endif</td>
                                        <td>
                                            <span class="text-muted fs-sm">{{ $row->created_at }}</span>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
