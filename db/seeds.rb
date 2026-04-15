# Clear existing data
Doctor.destroy_all
Service.destroy_all

puts "🌱 Seeding data..."

# === Doctors ===
Doctor.create!([
  {
    name: "Dr. John Adewale",
    specialty: "Orthopedic Surgery",
    description: "Specializes in bone, joint, and trauma surgeries with over 20 years of experience.",
    image_url: "https://source.unsplash.com/400x400/?doctor,orthopedic"
  },
  {
    name: "Dr. Miriam Okafor",
    specialty: "Cardiology",
    description: "Expert in diagnosing and treating cardiovascular diseases using modern medical technology.",
    image_url: "https://source.unsplash.com/400x400/?doctor,cardiology"
  },
  {
    name: "Dr. Samuel Johnson",
    specialty: "Internal Medicine",
    description: "Provides comprehensive care for adults with a focus on chronic illness management.",
    image_url: "https://source.unsplash.com/400x400/?doctor,medicine"
  },
  {
    name: "Dr. Grace Eze",
    specialty: "Pediatrics",
    description: "Dedicated to ensuring the health and well-being of infants, children, and adolescents.",
    image_url: "https://source.unsplash.com/400x400/?doctor,pediatrics"
  }
])

# === Services ===
Service.create!([
  {
    title: "Emergency Care",
    text: "24/7 emergency services",
    image_url: "https://via.placeholder.com/300x200?text=Emergency+Care",
      logo_url: "https://via.placeholder.com/300x200?text=Emergency+Care",
    description: "text"
  },
  {
    title: "Orthopedic Services",
    text: "Expert bone and joint care",
    image_url: "https://via.placeholder.com/300x200?text=Orthopedic+Care",
      logo_url: "https://via.placeholder.com/300x200?text=Emergency+Care",
    description: "text"
  }
])

puts "✅ Seeding completed! Added #{Doctor.count} doctors and #{Service.count} services."
