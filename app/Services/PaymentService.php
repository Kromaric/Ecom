class PaymentService
{
    private $stripe;

    public function __construct()
    {
        $this->stripe = new \Stripe\StripeClient(config('services.stripe.secret'));
    }

    public function createPaymentIntent($amount)
    {
        return $this->stripe->paymentIntents->create([
            'amount' => $amount * 100, // Conversion en centimes
            'currency' => 'eur'
        ]);
    }
} 