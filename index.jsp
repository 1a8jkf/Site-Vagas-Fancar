<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.logging.*" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <!-- Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Encontre sua próxima oportunidade de carreira no Grupo Fancar. Vagas em concessionárias Ford, Honda, Fiat, Volkswagen e Renault.">
    
    <!-- Title -->
    <title>Carreiras Grupo Fancar - Sua Próxima Oportunidade Te Espera</title>
    
    <!-- Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="icon" href="assets/icons/grupo.png" type="image/x-icon">
    
    <!-- Styles -->
    <link rel="stylesheet" href="css/index.css">
    
    <!-- Meta Pixel Code -->
    <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};
        if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
        n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t,s)}(window, document,'script',
        'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '2414836515518136');
        fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
    src="https://www.facebook.com/tr?id=2414836515518136&ev=PageView&noscript=1"
    /></noscript>
</head>
<body>
    <!-- Header -->
    <header class="modern-header">
        <div class="header-container">
            <div class="logo-section">
                <a href="#" class="logo-link">
                    <img src="assets/images/main-logo.png" alt="Grupo Fancar" class="main-logo">
                </a>
            </div>

            <nav class="main-navigation">
                <ul class="nav-menu">
                    <li><a href="#jobs-section" class="nav-link">Vagas</a></li>
                    <li><a href="#about-section" class="nav-link">Comprometimento</a></li>
                    <li><a href="https://www.grupofancar.com.br/" class="nav-link">Sobre Nós</a></li>
                    <li><a href="https://api.whatsapp.com/send?phone=558005914688" class="nav-link">Contato</a></li>
                    <li><a href="#faq-section" class="nav-link">FAQ</a></li>
                </ul>
            </nav>

            <div class="header-actions">
                <a href="templates/curriculo.jsp" class="cta-header-btn">
                    <span>Não Encontrei Minha Vaga</span>
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                        <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </a>
                
                <button class="mobile-menu-toggle" aria-label="Menu">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div class="mobile-menu">
            <div class="mobile-menu-content">
                <nav class="mobile-navigation">
                    <a href="#jobs-section" class="mobile-nav-link">Vagas</a>
                    <a href="#about-section" class="mobile-nav-link">Comprometimento</a>
                    <a href="https://www.grupofancar.com.br/" class="mobile-nav-link">Sobre Nós</a>
                    <a href="https://api.whatsapp.com/send?phone=558005914688" class="mobile-nav-link">Contato</a>
                    <a href="#faq-section" class="mobile-nav-link">FAQ</a>
                </nav>
                <a href="templates/curriculo.jsp" class="mobile-cta-btn">Não Encontrei Minha Vaga</a>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-background">
            <div class="hero-gradient"></div>
            <div class="hero-pattern"></div>
        </div>
        
        <div class="hero-container">
            <div class="hero-content">
                <div class="hero-badge">
                    <span class="badge-icon">🚗</span>
                    <span>Grupo Fancar Carreiras</span>
                </div>
                
                <h1 class="hero-title">
                    Sua próxima 
                    <span class="title-highlight">oportunidade</span>
                    está aqui
                </h1>
                
                <p class="hero-description">
                    Faça parte do maior grupo automotivo do Paraná e Mato Grosso. 
                    Encontre a vaga ideal para impulsionar sua carreira no setor automotivo.
                </p>
                
                <div class="hero-stats">
                    <div class="stat-item">
                        <span class="stat-number">20+</span>
                        <span class="stat-label">Concessionárias</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">500+</span>
                        <span class="stat-label">Colaboradores</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number">5</span>
                        <span class="stat-label">Marcas</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Search Panel -->
    <section class="search-section">
        <div class="search-container">
            <div class="search-content">
                <h2 class="search-title">Encontre Sua Vaga Ideal</h2>
                <p class="search-description">Use os filtros abaixo para encontrar oportunidades na sua cidade e marca preferida</p>
                
                <div class="search-filters">
                    <div class="filter-group">
                        <label for="cityFilter">Cidade</label>
                        <select id="cityFilter" class="filter-select">
                            <option value="">Todas as cidades</option>
                            <option value="Ponta Grossa">Ponta Grossa</option>
                            <option value="Assis">Assis</option>
                            <option value="Cascavel">Cascavel</option>
                            <option value="Campo Mourão">Campo Mourão</option>
                            <option value="Cianorte">Cianorte</option>
                            <option value="Foz do Iguaçu">Foz do Iguaçu</option>
                            <option value="Goioerê">Goioerê</option>
                            <option value="Guarapuava">Guarapuava</option>
                            <option value="Palotina">Palotina</option>
                            <option value="Pato Branco">Pato Branco</option>
                            <option value="Primavera do Leste">Primavera do Leste</option>
                            <option value="Rondonópolis">Rondonópolis</option>
                            <option value="Toledo">Toledo</option>
                            <option value="Ubiratã">Ubiratã</option>
                            <option value="Umuarama">Umuarama</option>
                        </select>
                    </div>

                    <div class="filter-group">
                        <label for="brandFilter">Marca</label>
                        <select id="brandFilter" class="filter-select">
                            <option value="">Todas as marcas</option>
                            <option value="Ford">Ford</option>
                            <option value="Honda">Honda</option>
                            <option value="Fiat">Fiat</option>
                            <option value="Renault">Renault</option>
                            <option value="Volkswagen">Volkswagen</option>
                            <option value="Mitsubishi">Mitsubishi</option>
                            <option value="Fancar">Support</option>
                        </select>
                    </div>

                    <div class="search-input-group">
                        <input type="text" placeholder="Pesquisar vagas..." class="search-input" id="searchInput">
                        <button class="search-btn" type="button">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                                <circle cx="11" cy="11" r="8" stroke="currentColor" stroke-width="2"/>
                                <path d="m21 21-4.35-4.35" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Jobs Section -->
    <section class="jobs-section" id="jobs-section">
        <div class="jobs-container">
            <div class="section-header">
                <h2 class="section-title">Vagas Disponíveis</h2>
                <p class="section-description">Explore nossas oportunidades de carreira em diferentes marcas e localidades</p>
            </div>

            <div class="jobs-grid" id="jobsGrid">
                <%
                    String url = "";
                    String user = "";
                    String password = "";

                    Connection connection = null;
                    PreparedStatement stmt = null;
                    String sql = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        connection = DriverManager.getConnection(url, user, password);

                        sql = "SELECT * FROM VAGASFANCAR";
                        stmt = connection.prepareStatement(sql);
                        rs = stmt.executeQuery(sql);

                        Map<String, String> marcaParaLogo = new HashMap<>();
                        marcaParaLogo.put("ford", "assets/images/ford.png");
                        marcaParaLogo.put("renault", "assets/images/renault.png");
                        marcaParaLogo.put("fiat", "assets/images/fiat.png");
                        marcaParaLogo.put("volkswagen", "assets/images/volkswagen.png");
                        marcaParaLogo.put("mitsubishi", "assets/images/mitsubishi.png");
                        marcaParaLogo.put("honda", "assets/images/honda.png");
                        marcaParaLogo.put("support", "assets/images/grupo.png");
                        marcaParaLogo.put("fancar", "assets/images/grupo.png");
                        marcaParaLogo.put("support - grupo fancar", "assets/images/grupo.png");
                        marcaParaLogo.put("banco de talentos", "assets/images/grupo.png");
                        marcaParaLogo.put("consórcio fancar", "assets/images/grupo.png");

                        while(rs.next()) {
                            String id = rs.getString("ID");
                            String logoMarca = rs.getString("MARCA").toLowerCase();
                            String logoUrl = marcaParaLogo.get(logoMarca);
                            String tituloVaga = rs.getString("VAGA");
                            String departamentoVaga = rs.getString("DEPARTAMENTO");
                            String concessionariaVaga = rs.getString("MARCA");
                            String cidadeVaga = rs.getString("CIDADE");
                            String descricaoVaga = rs.getString("DESCRICAO");
                            String requisitosVaga = rs.getString("REQUISITOS");

                            if(concessionariaVaga.equals("Support - Grupo Fancar")) {
                                concessionariaVaga = "Support - Fancar";
                            }
                %>
                            <div class="job-card" data-city="<%= cidadeVaga %>" data-brand="<%= concessionariaVaga %>" onclick="openJobModal('<%= id %>')">
                                <div class="job-card-header">
                                    <div class="job-logo">
                                        <img src="<%= logoUrl %>" alt="<%= concessionariaVaga %>" class="brand-logo">
                                    </div>
                                    <div class="job-badge">
                                        <span>Disponível</span>
                                    </div>
                                </div>
                                
                                <div class="job-card-body">
                                    <h3 class="job-title"><%= tituloVaga %></h3>
                                    <p class="job-description"><%= descricaoVaga %></p>
                                    
                                    <div class="job-details">
                                        <div class="job-location">
                                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                                <path d="M21 10C21 17L12 23L3 10C3 5.02944 7.02944 1 12 1C16.9706 1 21 5.02944 21 10Z" stroke="currentColor" stroke-width="2"/>
                                                <circle cx="12" cy="10" r="3" stroke="currentColor" stroke-width="2"/>
                                            </svg>
                                            <span><%= cidadeVaga %></span>
                                        </div>
                                        <div class="job-company">
                                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                                <path d="M3 21H21V8L12 2L3 8V21Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M9 21V12H15V21" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                            </svg>
                                            <span><%= concessionariaVaga %></span>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="job-card-footer">
                                    <button class="view-job-btn">
                                        <span>Ver Detalhes</span>
                                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none">
                                            <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                        </svg>
                                    </button>
                                </div>
                            </div>

                            <!-- Job Modal -->
                            <div class="job-modal" id="modal-<%= id %>">
                                <div class="modal-overlay" onclick="closeJobModal('<%= id %>')"></div>
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <div class="modal-brand">
                                            <img src="<%= logoUrl %>" alt="<%= concessionariaVaga %>" class="modal-brand-logo">
                                            <div class="modal-brand-info">
                                                <h3><%= tituloVaga %></h3>
                                                <p><%= concessionariaVaga %> • <%= cidadeVaga %></p>
                                            </div>
                                        </div>
                                        <button class="modal-close" onclick="closeJobModal('<%= id %>')" aria-label="Fechar">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                <path d="M18 6L6 18M6 6L18 18" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                            </svg>
                                        </button>
                                    </div>
                                    
                                    <div class="modal-body">
                                        <div class="modal-section">
                                            <h4>Descrição da Vaga</h4>
                                            <p><%= descricaoVaga %></p>
                                        </div>
                                        
                                        <div class="modal-section">
                                            <h4>Requisitos</h4>
                                            <p><%= requisitosVaga %></p>
                                        </div>
                                        
                                        <div class="modal-footer">
                                            <a href="templates/curriculo.jsp?vagaId=<%= id %>" class="apply-btn">
                                                <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                                                    <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <polyline points="14,2 14,8 20,8" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <line x1="16" y1="13" x2="8" y2="13" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <line x1="16" y1="17" x2="8" y2="17" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <polyline points="10,9 9,9 8,9" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                </svg>
                                                <span>Candidatar-se à Vaga</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                <%
                        }
                    } catch (Exception e) {
                    } finally {
                        if (stmt != null) {
                            try {
                                stmt.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                        if (connection != null) {
                            try {
                                connection.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                %>
            </div>
            
            <div class="no-results" id="noResults" style="display: none;">
                <div class="no-results-content">
                    <svg width="80" height="80" viewBox="0 0 24 24" fill="none">
                        <circle cx="11" cy="11" r="8" stroke="currentColor" stroke-width="2"/>
                        <path d="m21 21-4.35-4.35" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                    <h3>Nenhuma vaga encontrada</h3>
                    <p>Tente ajustar os filtros ou <a href="templates/curriculo.jsp">cadastre seu currículo</a> para futuras oportunidades.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="about-section" id="about-section">
        <div class="about-container">
            <div class="about-content">
                <div class="about-text">
                    <div class="section-badge">
                        <span>Nosso Comprometimento</span>
                    </div>
                    
                    <h2 class="section-title">Excelência Automotiva: Desperte Sua Oportunidade de Brilhar!</h2>
                    
                    <div class="about-description">
                        <p>
                            Bem-vindo ao ambiente onde a paixão por carros se une a um local de trabalho dinâmico. 
                            Ao entrar em nosso espaço, você estará imerso em um cenário que inspira inovação, 
                            colaboração e excelência.
                        </p>
                        
                        <p>
                            A tecnologia desempenha um papel central em nosso ambiente de trabalho. Com estações 
                            equipadas com os mais recentes sistemas e ferramentas, nossos colaboradores têm tudo 
                            o que precisam para se manterem produtivos e eficientes.
                        </p>
                    </div>
                </div>
                
                <div class="brands-showcase">
                    <div class="brand-card" data-brand="ford">
                        <div class="brand-background"></div>
                        <div class="brand-content">
                            <h3>Ford Fancar</h3>
                            <p>Líder em vendas e inovação</p>
                        </div>
                    </div>
                    
                    <div class="brand-card" data-brand="honda">
                        <div class="brand-background"></div>
                        <div class="brand-content">
                            <h3>Honda Fancar</h3>
                            <p>Qualidade e confiabilidade</p>
                        </div>
                    </div>
                    
                    <div class="brand-card" data-brand="fiat">
                        <div class="brand-background"></div>
                        <div class="brand-content">
                            <h3>Fiat Fancar</h3>
                            <p>Tradição e modernidade</p>
                        </div>
                    </div>
                    
                    <div class="brand-card" data-brand="volkswagen">
                        <div class="brand-background"></div>
                        <div class="brand-content">
                            <h3>Volkswagen Fancar</h3>
                            <p>Engenharia alemã</p>
                        </div>
                    </div>
                    
                    <div class="brand-card" data-brand="renault">
                        <div class="brand-background"></div>
                        <div class="brand-content">
                            <h3>Renault Fancar</h3>
                            <p>Design e tecnologia francesa</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="modern-footer" id="faq-section">
        <div class="footer-container">
            <div class="footer-content">
                <div class="footer-brand">
                    <img src="assets/images/inverted-main-logo.png" alt="Grupo Fancar" class="footer-logo">
                    <p class="footer-description">
                        Faça parte do maior grupo automotivo do Paraná e Mato Grosso.
                    </p>
                </div>

                <div class="footer-links">
                    <div class="footer-column">
                        <h4>Marcas</h4>
                        <ul>
                            <li><a href="https://ford.fancar.com.br/" target="_blank">Ford Fancar</a></li>
                            <li><a href="https://fiat.fancar.com.br/" target="_blank">Fiat Fancar</a></li>
                            <li><a href="https://vw.fancar.com.br/" target="_blank">Volkswagen Fancar</a></li>
                        </ul>
                    </div>

                    <div class="footer-column">
                        <h4>Serviços</h4>
                        <ul>
                            <li><a href="https://seminovos.fancar.com.br/" target="_blank">Seminovos Fancar</a></li>
                            <li><a href="https://api.whatsapp.com/send?phone=558005914688" target="_blank">Peças e Acessórios</a></li>
                            <li><a href="https://api.whatsapp.com/send?phone=558005914688" target="_blank">Agendamento de Revisão</a></li>
                        </ul>
                    </div>

                    <div class="footer-column">
                        <h4>Carreiras</h4>
                        <ul>
                            <li><a href="#jobs-section">Vagas Abertas</a></li>
                            <li><a href="templates/curriculo.jsp">Cadastre seu Currículo</a></li>
                            <li><a href="#about-section">Trabalhe Conosco</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <div class="footer-bottom-content">
                    <p class="footer-copyright">
                        &copy; 2024 Grupo Fancar. Todos os direitos reservados.
                    </p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>