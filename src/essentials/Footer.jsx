import React from 'react';
import { Link } from 'react-router-dom';
import './footer.css';

export default function Footer() {
    return (
        <footer className="footer-section">
            <div className="footer-container">

                {/* About Section */}
                <div className="footer-about">
                    <h4>About DÉSÍRE Hospital</h4>
                    <p>
                        DÉSÍRE Specialist Hospital is a multi-specialty healthcare facility
                        committed to delivering exceptional medical care with compassion,
                        precision, and professionalism.
                    </p>
                </div>

                {/* Quick Links */}
                <div className="footer-links">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><Link to="/">Home</Link></li>
                        <li><Link to="/services">Services</Link></li>
                        <li><Link to="/doctors">Doctors</Link></li>
                        <li><Link to="/contact">Contact Us</Link></li>
                    </ul>
                </div>

                {/* Contact Info */}
                <div className="footer-contact">
                    <h4>Contact Info</h4>
                    <p>📍 93 Adeoyo-Oje Road, Yemetu St, Ibadan 200284, Oyo</p>
                    <p>📞 +234 904 444 4811</p>
                    <p>✉️desirespecialisthospital@gmail.com</p>
                </div>

                {/* Social Media */}
                <div className="footer-social">
                    <h4>Follow Us</h4>
                    <div className="social-icons">
                        <a href="https://facebook.com" target="_blank" rel="noopener noreferrer">Facebook</a>
                        <a href="https://instagram.com" target="_blank" rel="noopener noreferrer">Instagram</a>
                        <a href="https://twitter.com" target="_blank" rel="noopener noreferrer">Twitter</a>
                    </div>
                </div>

            </div>

            <div className="footer-bottom">
                <p>© {new Date().getFullYear()} DÉSÍRE Specialist Hospital. All rights reserved.</p>
            </div>
        </footer>
    );
}
