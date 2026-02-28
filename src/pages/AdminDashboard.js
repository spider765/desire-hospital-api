// src/pages/AdminDashboard.js
import { useEffect, useState } from "react";
import axios from "axios";

export default function AdminDashboard() {
    const [data, setData] = useState(null);

    useEffect(() => {
        axios.get("/api/admin/dashboard", { withCredentials: true })
            .then(res => setData(res.data))
            .catch(err => {
                if (err.response?.status === 401) {
                    window.location.href = "/admin-login"; // redirect if not logged in
                }
            });
    }, []);

    return (
        <div>
            <h1>Admin Dashboard</h1>
            {data ? <pre>{JSON.stringify(data, null, 2)}</pre> : <p>Loading...</p>}
        </div>
    );
}
