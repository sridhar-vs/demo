<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>RC School</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        ::-webkit-scrollbar {
        display: none;
        }
    </style>
  </head>
  <body>
    <nav
        class="navbar navbar-expand-lg bg-info navbar-light shadow sticky-top p-0 pe-5" style="height: 60px;">
      <a href="index.jsp"class="navbar-brand d-flex align-items-center px-4 px-lg-5">
        <h2 class="m-0 text-danger">
          <i class="fa fa-book me-3"></i>RC PRIMARY
        </h2>
      </a>
      <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-uppercase fw-bold" id="navbarCollapse">
        <div class="navbar-nav ms-auto">
          <a href="index.jsp" class="nav-item nav-link px-3">Home</a>
          <a href="#about" class="nav-item nav-link px-3">About</a>
          <a href="#Courses" class="nav-item nav-link px-3">Courses</a>
          <a href="#Contact" class="nav-item nav-link px-3">Contact</a>
          <a href="login.jsp" class="nav-item nav-link px-3">login</a>
        </div>
      </div>
    </nav>
      <div class="container-fluid p-0 mb-5 overflow-x-hidden">
      <div class="carousel header-carousel  slide position-relative" data-bs-ride="carousel">
        <div class="carousel-item active">
          <img class="img-fluid d-block w-100" src="img/carousel-1.jpg" alt=""/>
          <div
            class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
            style="background: rgba(24, 29, 56, 0.7)"
          >
            <div class="container">
              <div class="row justify-content-start">
                <div class="col-sm-10 col-lg-8">
                  <h5
                    class="text-primary text-uppercase mb-3 animated slideInDown"
                  >
                    RC Primary School
                  </h5>
                  <h1 class="display-3 text-white animated slideInDown">
                    Science Experiments
                  </h1>
                  <p class="fs-5 text-white mb-4 pb-2">
                    showcasing simple science experiments with step-by-step
                    instructions and explanations of the scientific concepts
                    behind them. They can include videos or images of the
                    experiments in action.
                  </p>
                  <a
                    href=""
                    class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft"
                    >Read More</a
                  >
                  <a
                    href=""
                    class="btn btn-light py-md-3 px-md-5 animated slideInRight"
                    >Join Now</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <img class="img-fluid d-block w-100 h-auto" src="img/carousel-2.jpg" alt=""/>
          <div
            class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
            style="background: rgba(24, 29, 56, 0.7)"
          >
            <div class="container">
              <div class="row justify-content-start">
                <div class="col-sm-10 col-lg-8">
                  <h5
                    class="text-primary text-uppercase mb-3 animated slideInDown"
                  >
                    RC Primary school
                  </h5>
                  <h1 class="display-3 text-white animated slideInDown">
                    Healthy Living
                  </h1>
                  <p class="fs-5 text-white mb-4 pb-2">
                    promoting healthy habits and lifestyles. They can include
                    information about nutrition, exercise, and the importance of
                    staying active. Interactive quizzes and games can be added
                    to make it more engaging.
                  </p>
                  <a
                    href=""
                    class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft"
                    >Read More</a
                  >
                  <a
                    href=""
                    class="btn btn-light py-md-3 px-md-5 animated slideInRight"
                    >Join Now</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-xxl" id="about">
      <div class="container">
        <div class="row g-4">
          <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="service-item text-center pt-3">
              <div class="p-4">
                <i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>
                <h5 class="mb-3">Skilled Instructors</h5>
                <p>
                  Our primary school program is led by a team of highly skilled
                  and dedicated instructors who are passionate about creating a
                  nurturing and engaging learning environment
                </p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="service-item text-center pt-3">
              <div class="p-4">
                <i class="fa fa-3x fa-globe text-primary mb-4"></i>
                <h5 class="mb-3">Online Classes</h5>
                <p>
                  We will explore a variety of engaging and educational content
                  to ensure a dynamic and interactive learning experience.
                </p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="service-item text-center pt-3">
              <div class="p-4">
                <i class="fa fa-3x fa-home text-primary mb-4"></i>
                <h5 class="mb-3">Home Projects</h5>
                <p>
                  To provide engaging and hands-on learning experiences that can
                  be completed at home with the support of parents or guardians.
                </p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
            <div class="service-item text-center pt-3">
              <div class="p-4">
                <i class="fa fa-3x fa-book-open text-primary mb-4"></i>
                <h5 class="mb-3">Book Library</h5>
                <p>
                  Our library is a treasure trove of imagination, knowledge, and
                  inspiration, curated specifically for young readers.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5">
          <div
            class="col-lg-6 wow fadeInUp"
            data-wow-delay="0.1s"
            style="min-height: 400px"
          >
            <div class="position-relative h-100">
              <img
                class="img-fluid position-absolute w-100 h-100"
                src="img/about.jpg"
                alt=""
                style="object-fit: cover"
              />
            </div>
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
            <h6 class="section-title bg-white text-start text-primary pe-3">
              About Us
            </h6>
            <h1 class="mb-4">Welcome to RC PRIMARY School</h1>
            <p class="mb-4">
              We've carefully curated information that is appropriate for
              primary school students, making it a safe and enjoyable learning
              experience.
            </p>
            <p class="mb-4">
              Our objective is that every student should attain academic
              excellence and emerge as a role model for society.
            </p>
            <div class="row gy-2 gx-4 mb-4">
              <div class="col-sm-6">
                <p class="mb-0">
                  <i class="fa fa-arrow-right text-primary me-2"></i>Skilled
                  Instructors
                </p>
              </div>
              <div class="col-sm-6">
                <p class="mb-0">
                  <i class="fa fa-arrow-right text-primary me-2"></i>Online
                  Classes
                </p>
              </div>
              <div class="col-sm-6">
                <p class="mb-0">
                  <i class="fa fa-arrow-right text-primary me-2"></i
                  >International Certificate
                </p>
              </div>
              <div class="col-sm-6">
                <p class="mb-0">
                  <i class="fa fa-arrow-right text-primary me-2"></i>Technology
                  Integration
                </p>
              </div>
              <div class="col-sm-6">
                <p class="mb-0">
                  <i class="fa fa-arrow-right text-primary me-2"></i>Continuous
                  Professional Development
                </p>
              </div>
            </div>
            <a class="btn btn-primary py-3 px-5 mt-2" href="">Read More</a>
          </div>
        </div>
      </div>
    </div>
    <div class="container-xxl py-5 category" id="Courses">
      <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
          <h6 class="section-title bg-white text-center text-primary px-3">
            Categories
          </h6>
          <h1 class="mb-5">Courses Categories</h1>
        </div>
        <div class="row g-3">
          <div class="col-lg-7 col-md-6">
            <div class="row g-3">
              <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                <a class="position-relative d-block overflow-hidden" href="">
                  <img class="img-fluid" src="img/cat-1.jpg" alt="" />
                  <div
                    class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3"
                    style="margin: 1px"
                  >
                    <h5 class="m-0">Computer Science and Technology</h5>
                    <small class="text-primary">49 Students</small>
                  </div>
                </a>
              </div>
              <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                <a class="position-relative d-block overflow-hidden" href="">
                  <img class="img-fluid" src="img/cat-2.jpg" alt="" />
                  <div
                    class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3"
                    style="margin: 1px"
                  >
                    <h5 class="m-0">Music and Performing Arts</h5>
                    <small class="text-primary">30 Students</small>
                  </div>
                </a>
              </div>
              <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.5s">
                <a class="position-relative d-block overflow-hidden" href="">
                  <img class="img-fluid" src="img/cat-3.jpg" alt="" />
                  <div
                    class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3"
                    style="margin: 1px"
                  >
                    <h5 class="m-0">Foreign Languages</h5>
                    <small class="text-primary">20 Students</small>
                  </div>
                </a>
              </div>
            </div>
          </div>
          <div
            class="col-lg-5 col-md-6 wow zoomIn"
            data-wow-delay="0.7s"
            style="min-height: 350px"
          >
            <a class="position-relative d-block h-100 overflow-hidden" href="">
              <img
                class="img-fluid position-absolute w-100 h-100"
                src="img/cat-4.jpg"
                alt=""
                style="object-fit: cover"
              />
              <div
                class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3"
                style="margin: 1px"
              >
                <h5 class="m-0">Language Arts</h5>
                <small class="text-primary">35 Students</small>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="container-xxl py-5">
      <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
          <h6 class="section-title bg-white text-center text-primary px-3">
            Courses
          </h6>
          <h1 class="mb-5">Popular Courses</h1>
        </div>
        <div class="row g-4 justify-content-center">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="course-item bg-light">
              <div class="position-relative overflow-hidden">
                <img class="img-fluid" src="img/course-1.jpg" alt="" />
                <div
                  class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4"
                >
                  <a
                    href="#"
                    class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end"
                    style="border-radius: 30px 0 0 30px"
                    >Read More</a
                  >
                  <a
                    href="#"
                    class="flex-shrink-0 btn btn-sm btn-primary px-3"
                    style="border-radius: 0 30px 30px 0"
                    >Join Now</a
                  >
                </div>
              </div>
              <div class="text-center p-4 pb-0">
                <h3 class="mb-0">₹600.00</h3>
                <div class="mb-3">
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small>(123)</small>
                </div>
                <h5 class="mb-4">Language Arts Course for Beginners</h5>
              </div>
              <div class="d-flex border-top">
                <small class="flex-fill text-center border-end py-2"
                  ><i class="fa fa-user-tie text-primary me-2"></i>rohini
                </small>
                <small class="flex-fill text-center border-end py-2"
                  ><i class="fa fa-clock text-primary me-2"></i>1 Hrs</small
                >
                <small class="flex-fill text-center py-2"
                  ><i class="fa fa-user text-primary me-2"></i>35
                  Students</small
                >
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="course-item bg-light">
              <div class="position-relative overflow-hidden">
                <img class="img-fluid" src="img/course-2.jpg" alt="" />
                <div
                  class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4"
                >
                  <a
                    href="#"
                    class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end"
                    style="border-radius: 30px 0 0 30px"
                    >Read More</a
                  >
                  <a
                    href="#"
                    class="flex-shrink-0 btn btn-sm btn-primary px-3"
                    style="border-radius: 0 30px 30px 0"
                    >Join Now</a
                  >
                </div>
              </div>
              <div class="text-center p-4 pb-0">
                <h3 class="mb-0">₹800.00</h3>
                <div class="mb-3">
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small>(123)</small>
                </div>
                <h5 class="mb-4">
                  Computer Science and Technology Course for Beginners
                </h5>
              </div>
              <div class="d-flex border-top">
                <small class="flex-fill text-center border-end py-2"
                  ><i class="fa fa-user-tie text-primary me-2"></i>bala</small
                >
                <small class="flex-fill text-center border-end py-2"
                  ><i class="fa fa-clock text-primary me-2"></i>1.30 Hrs</small
                >
                <small class="flex-fill text-center py-2"
                  ><i class="fa fa-user text-primary me-2"></i>49
                  Students</small
                >
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="course-item bg-light">
              <div class="position-relative overflow-hidden">
                <img class="img-fluid" src="img/course-3.jpg" alt="" />
                <div
                  class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4"
                >
                  <a
                    href="#"
                    class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end"
                    style="border-radius: 30px 0 0 30px"
                    >Read More</a
                  >
                  <a
                    href="#"
                    class="flex-shrink-0 btn btn-sm btn-primary px-3"
                    style="border-radius: 0 30px 30px 0"
                    >Join Now</a
                  >
                </div>
              </div>
              <div class="text-center p-4 pb-0">
                <h3 class="mb-0">₹400.00</h3>
                <div class="mb-3">
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small class="fa fa-star text-primary"></small>
                  <small>(123)</small>
                </div>
                <h5 class="mb-4">
                  Music and Performing Arts Course for Beginners
                </h5>
              </div>
              <div class="d-flex border-top">
                <small class="flex-fill text-center border-end py-2"
                  ><i class="fa fa-user-tie text-primary me-2"></i>shalini
                </small>
                <small class="flex-fill text-center border-end py-2"
                  ><i class="fa fa-clock text-primary me-2"></i>1 Hrs</small
                >
                <small class="flex-fill text-center py-2"
                  ><i class="fa fa-user text-primary me-2"></i>30
                  Students</small
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-xxl py-5" id="Contact">
      <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
          <h6 class="section-title bg-white text-center text-primary px-3">
            Contact Us
          </h6>
          <h1 class="mb-5">Contact For Any Query</h1>
        </div>
        <div class="row g-4">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <h5>Get In Touch</h5>
            <p class="mb-4">
              The contact form is currently inactive. Get a functional and
              working contact form with Ajax & PHP in a few minutes. Just copy
              and paste the files, add a little code and you're done.
            </p>
            <div class="d-flex align-items-center mb-3">
              <div
                class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary"
                style="width: 50px; height: 50px"
              >
                <i class="fa fa-map-marker-alt text-white"></i>
              </div>
              <div class="ms-3">
                <h5 class="text-primary">Location</h5>
                <p class="mb-0">Veerattagaram, Tamil Nadu 605766, India</p>
              </div>
            </div>
            <div class="d-flex align-items-center mb-3">
              <div
                class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary"
                style="width: 50px; height: 50px"
              >
                <i class="fa fa-phone-alt text-white"></i>
              </div>
              <div class="ms-3">
                <h5 class="text-primary">Mobile</h5>
                <p class="mb-0">+91 98765436219</p>
              </div>
            </div>
            <div class="d-flex align-items-center">
              <div
                class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary"
                style="width: 50px; height: 50px"
              >
                <i class="fa fa-envelope-open text-white"></i>
              </div>
              <div class="ms-3">
                <h5 class="text-primary">Email</h5>
                <p class="mb-0">rcprimary@gmail.com</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <iframe
              class="position-relative rounded w-100 h-100"
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d485331.58240002254!2d78.77726395605497!3d11.941845316236636!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3baca9ce57d7abf3%3A0x5afc75c41dc81e5f!2sRC%20Primary%20School!5e1!3m2!1sen!2sus!4v1688457430306!5m2!1sen!2sus"
              frameborder="0"
              style="min-height: 300px; border: 0"
              allowfullscreen=""
              aria-hidden="false"
              tabindex="0"
            ></iframe>
          </div>
          <div class="col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s">
              <form target="_self" action="Fbdetails.jsp#insertfeedback" method="post">
              <div class="row g-3">
                <div class="col-md-6">
                  <div class="form-floating">
                    <input
                      type="text"
                      class="form-control"
                      id="name"
                      name="fbname"
                      placeholder="Your Name"
                    />
                    <label for="name">Your Name</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-floating">
                    <input
                      type="email"
                      class="form-control"
                      id="email"
                      name="fbemail"
                      placeholder="Your Email"
                    />
                    <label for="email">Your Email</label>
                  </div>
                </div>
                <div class="col-12">
                  <div class="form-floating">
                    <textarea
                      class="form-control"
                      placeholder="Leave a message here"
                      id="message"
                      name="fbmsg"
                      style="height: 150px"
                    ></textarea>
                    <label for="message">Message</label>
                  </div>
                </div>
                <div class="col-12">
                  <button class="btn btn-primary w-100 py-3" type="submit">
                    Send Message
                  </button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div
      class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <div class="row g-5">
          <div class="col-lg-3 col-md-6">
            <h4 class="text-white mb-3">Quick Link</h4>
            <a class="btn btn-link" href="http://localhost:8080/JSPProject/index.jsp#about">About Us</a>
            <a class="btn btn-link" href="http://localhost:8080/JSPProject/index.jsp#Contact">Contact Us</a>
            <a class="btn btn-link" href="#">Privacy Policy</a>
            <a class="btn btn-link" href="#">Terms & Condition</a>
            <a class="btn btn-link" href="#">FAQs & Help</a>
          </div>
          <div class="col-lg-3 col-md-6">
            <h4 class="text-white mb-3">Contact</h4>
            <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Veerattagaram, Tamil Nadu 605766, India</p>
            <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 98765436219</p>
            <p class="mb-2"><i class="fa fa-envelope me-3"></i>rcprimary@gmail.com</p>
            <div class="d-flex pt-2">
              <a class="btn btn-outline-light btn-social" href="https://twitter.com/login"
                ><i class="fab fa-twitter"></i
              ></a>
              <a class="btn btn-outline-light btn-social" href="https://www.facebook.com"
                ><i class="fab fa-facebook-f"></i
              ></a>
              <a class="btn btn-outline-light btn-social" href="http://in.youtube.com/"
                ><i class="fab fa-youtube"></i
              ></a>
              <a class="btn btn-outline-light btn-social" href="https://www.linkedin.com/login"
                ><i class="fab fa-linkedin-in"></i
              ></a>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <h4 class="text-white mb-3">Gallery</h4>
            <div class="row g-2 pt-2">
              <div class="col-4">
                <img
                  class="img-fluid bg-light p-1"
                  src="img/course-1.jpg"
                  alt=""
                />
              </div>
              <div class="col-4">
                <img
                  class="img-fluid bg-light p-1"
                  src="img/course-2.jpg"
                  alt=""
                />
              </div>
              <div class="col-4">
                <img
                  class="img-fluid bg-light p-1"
                  src="img/course-3.jpg"
                  alt=""
                />
              </div>
              <div class="col-4">
                <img
                  class="img-fluid bg-light p-1"
                  src="img/course-2.jpg"
                  alt=""
                />
              </div>
              <div class="col-4">
                <img
                  class="img-fluid bg-light p-1"
                  src="img/course-3.jpg"
                  alt=""
                />
              </div>
              <div class="col-4">
                <img
                  class="img-fluid bg-light p-1"
                  src="img/course-1.jpg"
                  alt=""
                />
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

