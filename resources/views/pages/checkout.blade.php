@extends('layouts.checkout')

@section('title', 'Checkout')


@section('content')

<main>
    <section class="section-details-header"></section>
        <section class="section-details-content">
            <div class="container">
                <div class="row">
                    <div class="col p-0">
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    Paket Travel
                                </li>
                                <li class="breadcrumb-item">
                                    Details
                                </li>
                                <li class="breadcrumb-item active">
                                    Checkout
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 pl-lg-0">
                        <div class="card card-details">
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            <h1>Who is Going ?</h1>
                            <p>Trip to {{ $item->travel_package->title }}, {{ $item->travel_package->location }}</p>
                            <div class="attendee">
                                <table class="table table-responsive-sm text-center">
                                    <thead>
                                        <tr>
                                            <td><b>Picture</b></td>
                                            <td><b>Name</b></td>
                                            <td><b>Nationality</b></td>
                                            <td><b>Visa</b></td>
                                            <td><b>Passport</b></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($item->details as $detail)
                                            <tr>
                                                <td>
                                                    <img src="https://ui-avatars.com/api/?name={{ $detail->username }}" height="80px" class="rounded-circle">
                                                </td>
                                                <td class="align-middle">
                                                    {{ $detail->username }}
                                                </td>
                                                <td class="align-middle">
                                                    {{ $detail->nationality }}
                                                </td>
                                                <td class="align-middle">
                                                    {{ $detail->is_visa ? '30 Days' : 'N/A' }}
                                                </td>
                                                <td class="align-middle">
                                                    {{ \Carbon\Carbon::createFromDate($detail->doe_passport) >
                                                    \Carbon\Carbon::now() ? 'Active' : 'Inactive' }}
                                                </td>
                                                <td class="align-middle">
                                                    <a href="{{ route('checkout-remove', $detail->id) }}">
                                                        <img src="{{ url('frontend/images/cross.png') }}" alt="">
                                                    </a>
                                                </td>
                                            </tr>
                                        @empty
                                            <tr>
                                                <td colspan="6" class="text-center">No visitor</td>
                                            </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>
                            <div class="member mt-3">
                                <h2>Add Member</h2>
                                <form class="row" method="POST" action="{{ route('checkout-create', $item->id) }}">
                                    @csrf
                                    <div class="col-md-3">
                                        <div class="form-inline">
                                            <input type="text" name="username" class="form-control" id="username" placeholder="Username" required>
                                        </div>
                                    </div>
                                    <div class="col-md-1">
                                        <div class="form-inline">
                                            <input type="text" name="nationality" class="form-control" style="width: 50px" id="nationality" placeholder="Nationality" required>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-inline">
                                            <select name="is_visa" id="is_visa" placeholder="Visa" class="form-select" required>
                                                <option value="" selected>VISA</option>
                                                <option value="1">30 Days</option>
                                                <option value="0">N/A</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-inline">
                                            <input type="text" name="doe_passport" class="form-control datepicker" id="doe_passport" placeholder="DOE Passport">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <button type="submit" class="btn btn-add-now mb-2 px-4">Add Now</button>
                                    </div>
                                </form>
                                <h3 class="mt-2 mb-0">Note</h3>
                                <p class="disclaimer mb-0">
                                    You are only able to invite member that has registered in Nomads.
                                </p>
                            </div>
                        </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card card-details card-right">
                                <h2>Checkout Informations</h2>
                                <table class="trip-informations">
                                    <tr>
                                        <th width="50%">Members</th>
                                        <td width="50%" class="text-right">
                                            {{ $item->details->count() }} person
                                        </td>
                                    </tr>
                                    <tr>
                                        <th width="50%">Additional VISA</th>
                                        <td width="50%" class="text-right">
                                            $ {{ $item->additional_visa }},00
                                        </td>
                                    </tr>
                                    <tr>
                                        <th width="50%">Trip Price</th>
                                        <td width="50%" class="text-right">
                                            $ {{ $item->travel_package->price }},00 / person
                                        </td>
                                    </tr>
                                    <tr>
                                        <th width="50%">Sub Total</th>
                                        <td width="50%" class="text-right">
                                            $ {{ $item->transaction_total }},00
                                        </td>
                                    </tr>
                                    <tr>
                                        <th width="50%">Total (+unique code)</th>
                                        <td width="50%" class="text-right text-total">
                                            <span class="text-blue">$ {{ $item->transaction_total }},</span>
                                            <span class="text-orange">{{ mt_rand(0,99) }}</span>
                                        </td>
                                    </tr>
                                </table>
                                <hr>
                                <h2>Payment Instruction</h2>
                                <p class="payment-instructions">Please complete your payment before to continue the wonderful trip</p>
                                <div class="bank">
                                    <div class="bank-item pb-3">
                                        <img src="{{ url('frontend/images/credit-card.png') }}" alt="" class="bank-image">
                                        <div class="description">
                                            <h3>PT Nomads ID</h3>
                                            <p>0881 8829 8800 <br>
                                                Bank OCBC NISP
                                            </p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="bank-item pb-3">
                                        <img src="{{ url('frontend/images/credit-card.png') }}" alt="" class="bank-image">
                                        <div class="description">
                                            <h3>PT Nomads ID</h3>
                                            <p>0881 8829 8800 <br>
                                                Bank Mandiri
                                            </p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="join-container d-grid">
                                <a href="{{ route('checkout-success', $item->id) }}" class="btn btn-join-now mt-3 py-2">I Have Made Payment</a>
                            </div>
                            <div class="text-center mt-3">
                                <a href="{{ route('detail', $item->travel_package->slug) }}" class="text-muted">Cancel Booking</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</main>

@endsection

@push('prepend-style')

<link rel="stylesheet" href="{{ url('frontend/libraries/combined/css/gijgo.min.css') }}">

@endpush

@push('addon-script')

<script src="{{ url('frontend/libraries/combined/js/gijgo.min.js') }}"></script>
<script>
    $(document).ready(function() {
        $('.datepicker').datepicker( {
            format: 'yyyy-mm-dd',
            uiLibrary: 'bootstrap4',
            icons: {
                rightIcon: '<img src="{{ url('frontend/images/datepicker.png') }}"/>'
            }
        })
    });
</script>

@endpush
