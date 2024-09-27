const { Given, When, Then } = require('@cucumber/cucumber');
const { expect } = require('chai');

Given('que el developer realiza el desarrollo de la sección {string}', async (seccion) => {
  await browser.url('http://localhost:3000/'); 
  const link = await $(`nav a[href="#${seccion.toLowerCase()}"]`);
  expect(await link.isExisting()).to.be.true; 
});

When('se programe correctamente la navegación', async () => {
  const sectionLink = await $('nav a[href="#nosotros"]');
  await sectionLink.click();
});

Then('la navegación en la sección {string} debe ser funcional y mostrar los datos pertinentes', async (seccion) => {
  const section = await $(`#${seccion.toLowerCase()}`);
  await section.scrollIntoView(); 
  const isDisplayed = await section.isDisplayed();
  expect(isDisplayed).to.be.true;
});

Then('la navegación en la sección no debe mostrar errores', async () => {
  const logs = await browser.getLogs('browser');
  const errorLogs = logs.filter(log => log.level === 'SEVERE');
  expect(errorLogs.length).to.equal(0);
});

Then('debe ser intuitiva según el panel del Mock-up de la sección {string}', async (seccion) => {
  const section = await $(`#${seccion.toLowerCase()}`);
  const isDisplayed = await section.isDisplayed();
  expect(isDisplayed).to.be.true;
});

Then('debe mostrar la información pertinente', async () => {
  const planesSection = await $('#planes');
  const text = await planesSection.getText();
  expect(text).to.include('Plan Básico');
  expect(text).to.include('Plan Avanzado');
});
