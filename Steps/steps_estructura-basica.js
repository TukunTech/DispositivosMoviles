const { Given, When, Then } = require('@cucumber/cucumber');
const { expect } = require('chai');

Given('que el landing page debe presentar la información de manera accesible', async () => {
  await browser.url('http://localhost:3000/'); 
});

When('el developer estructure el contenido', async () => {
  const header = await $('header');
  const main = await $('main');
  const footer = await $('footer');

  expect(await header.isExisting()).to.be.true;  
  expect(await main.isExisting()).to.be.true;    
  expect(await footer.isExisting()).to.be.true;  
});

Then('la jerarquía de las secciones debe facilitar que los usuarios comprendan de forma intuitiva el flujo de la información', async () => {
  const sections = await $$('section');  
  expect(sections.length).to.be.above(0); 

  const firstSection = await sections[0].getAttribute('id');
  expect(firstSection).to.equal('hero'); 
});

Given('que el landing page debe ser adaptable a diferentes dispositivos', async () => {
  await browser.url('http://localhost:3000/'); 
});

When('se defina la estructura HTML', async () => {
  const sections = await $$('section');
  for (let section of sections) {
    const className = await section.getAttribute('class');
    expect(className).to.include('responsive'); 
  }
});

Then('el diseño debe permitir que las secciones sean responsivas, manteniendo su claridad y coherencia en cualquier resolución de pantalla', async () => {
  await browser.setWindowSize(320, 480);  
  const mobileSection = await $('section');
  expect(await mobileSection.isDisplayed()).to.be.true;

  await browser.setWindowSize(1280, 1024);  
  const desktopSection = await $('section');
  expect(await desktopSection.isDisplayed()).to.be.true;
});
