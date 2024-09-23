% Definir la carpeta de destino
dataFolder = 'C:\Users\pablo\Desktop\control_oruga\Data';

% Crear la carpeta si no existe
if ~exist(dataFolder, 'dir')
    mkdir(dataFolder);
end

% Crear un dataset vacío
data = Simulink.SimulationData.Dataset;

% Añadir cada timeseries al dataset
data = data.addElement(out.v_ts, 'v_ts');
data = data.addElement(out.w_ts, 'w_ts');
data = data.addElement(out.h_ts, 'h_ts');

% Ruta completa del archivo
rutaDatos = fullfile(dataFolder, 'datos.mat');

% Guardar el dataset en un archivo .mat
save(rutaDatos, 'data');
