document.addEventListener('DOMContentLoaded', function() {
    console.log('Application prête !');
    
    // Gestion de la soumission du formulaire
    const forms = document.querySelectorAll('form');
    forms.forEach(form => {
        form.addEventListener('submit', function(e) {
            if (!this.checkValidity()) {
                e.preventDefault();
                alert('Veuillez remplir tous les champs requis !');
            }
        });
    });
});