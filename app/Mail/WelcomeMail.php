<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class WelcomeMail extends Mailable
{
    use Queueable, SerializesModels;
    public $member;

    /**
     * Create a new message instance.
     */
    public function __construct($member)
    {
        $this->member = $member;
        //
    }

    public function build()
    {
        return $this->subject('Uprise Sacco Annual Performance Report')
            ->view('admin.email-reports.index')
            ->attachData($this->generatePDF(), 'admin.email-reports.show', [
                'mime' => 'application/pdf',
            ]);
    }


    private function generateDeposit_pdf()
    {
        $pdf = new \Dompdf\Dompdf();
        // Generate the PDF content using your view and data
        $html = view('admin.reports.deposit', ['member' => $this->member])->render();
        $pdf->loadHtml($html);
        $pdf->setPaper('A4', 'portrait');
        $pdf->render();

        return $pdf->output();
    }

    private function generateloan_pdf()
    {
        $pdf = new \Dompdf\Dompdf();
        // Generate the PDF content using your view and data
        $html = view('admin.reports.loan', ['member' => $this->member])->render();
        $pdf->loadHtml($html);
        $pdf->setPaper('A4', 'portrait');
        $pdf->render();

        return $pdf->output();
    }



    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Report on performance.',
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            view: 'admin.email-reports.index',
            with: ['member' => $this->member]
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        return [];
    }
}
