% Cargar el archivo de datos
load('C:\Users\pablo\Desktop\control_oruga\Data\datos.mat');

% Verificar el contenido del dataset
disp(data);

% Asegurarse de que los timeseries están correctos
v_ts = data.get('v_ts');
w_ts = data.get('w_ts');
h_ts = data.get('h_ts');

% Crear un dataset compatible con Signal Editor
modelo = Simulink.SimulationData.Dataset;
modelo = modelo.addElement(v_ts, 'v_ts');
modelo = modelo.addElement(w_ts, 'w_ts');
modelo = modelo.addElement(h_ts, 'h_ts');

% Guardar en un nuevo archivo .mat para uso en el Signal Editor
save('C:\Users\pablo\Desktop\control_oruga\Data\datos_modelo.mat', 'modelo');
