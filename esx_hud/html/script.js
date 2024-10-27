window.addEventListener('message', function(event) {
    if (event.data.type === "updateHUD") {
        // Calculate health and armor percentages
        const healthPercent = Math.max(0, event.data.health);
        const armorPercent = Math.max(0, event.data.armor);

        // Update the width of the health and armor bars
        document.getElementById('health-fill').style.width = healthPercent + '%';
        document.getElementById('armor-fill').style.width = armorPercent + '%';

        // Update the text to show the percentage values
        document.getElementById('health-text').textContent = healthPercent + '%';
        document.getElementById('armor-text').textContent = armorPercent + '%';
    }
});
