function varargout = Find_Frequency_v1(varargin)
% FIND_FREQUENCY_V1 MATLAB code for Find_Frequency_v1.fig
%      FIND_FREQUENCY_V1, by itself, creates a new FIND_FREQUENCY_V1 or raises the existing
%      singleton*.
%
%      H = FIND_FREQUENCY_V1 returns the handle to a new FIND_FREQUENCY_V1 or the handle to
%      the existing singleton*.
%
%      FIND_FREQUENCY_V1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIND_FREQUENCY_V1.M with the given input arguments.
%
%      FIND_FREQUENCY_V1('Property','Value',...) creates a new FIND_FREQUENCY_V1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Find_Frequency_v1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Find_Frequency_v1_OpeningFcn via varargin.
%
%      *See GUI Options gon GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Find_Frequency_v1

% Last Modified by GUIDE v2.5 23-Dec-2016 15:53:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Find_Frequency_v1_OpeningFcn, ...
                   'gui_OutputFcn',  @Find_Frequency_v1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Find_Frequency_v1 is made visible.
function Find_Frequency_v1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Find_Frequency_v1 (see VARARGIN)

% Choose default command line output for Find_Frequency_v1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Find_Frequency_v1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Find_Frequency_v1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes gon selection change in sampleRate.
function sampleRate_Callback(hObject, eventdata, handles)
% hObject    handle to sampleRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns sampleRate contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sampleRate
valsampleRate=get(hObject,'Value');
valnumberofbits=get(handles.numberofBis,'value');
valnumberOfChannels=get(handles.numberOfChannels,'value');
valduration=get(handles.duration,'value');

[sapleRate,numberOfBits,numberOfChannel,duration]=setProperties(valsampleRate,valnumberofbits,valnumberOfChannels,valduration);

srate=sprintf('%s %d \n','Sample Rate: ',sapleRate);
nbits=sprintf('%s %d \n','Number of Bits: ',numberOfBits);
nchan=sprintf('%s %d \n','Number of Channels: ',numberOfChannel);
durtn=sprintf('%s %d Seconds \n','Duration : ',duration);

set(handles.lblsamplrate,'string', srate)
set(handles.lblnumberofbits,'string',nbits)
set(handles.lblnochannel,'string',nchan)
set(handles.lblduration,'string',durtn)

% --- Executes during object creation, after setting all properties.
function sampleRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sampleRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background gon Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function duration_Callback(hObject, eventdata, handles)
% hObject    handle to duration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of duration as text
%        str2double(get(hObject,'String')) returns contents of duration as a double
valsampleRate=get(handles.sampleRate,'value');
valnumberofbits=get(handles.numberofBis,'value');
valnumberOfChannels=get(handles.numberOfChannels,'value');
valduration=get(hObject,'value');

[sapleRate,numberOfBits,numberOfChannel,duration]=setProperties(valsampleRate,valnumberofbits,valnumberOfChannels,valduration);
srate=sprintf('%s %d \n','Sample Rate: ',sapleRate);
nbits=sprintf('%s %d \n','Number of Bits: ',numberOfBits);
nchan=sprintf('%s %d \n','Number of Channels: ',numberOfChannel);
durtn=sprintf('%s %d Seconds \n','Duration : ',duration);

set(handles.lblsamplrate,'string', srate)
set(handles.lblnumberofbits,'string',nbits)
set(handles.lblnochannel,'string',nchan)
set(handles.lblduration,'string',durtn)


% --- Executes during object creation, after setting all properties.
function duration_CreateFcn(hObject, eventdata, handles)
% hObject    handle to duration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background gon Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes gon selection change in numberOfChannels.
function numberOfChannels_Callback(hObject, eventdata, handles)
% hObject    handle to numberOfChannels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns numberOfChannels contents as cell array
%        contents{get(hObject,'Value')} returns selected item from numberOfChannels
valsampleRate=get(handles.sampleRate,'value');
valnumberofbits=get(handles.numberofBis,'value');
valnumberOfChannels=get(hObject,'value');
valduration=get(handles.duration,'value');

[sapleRate,numberOfBits,numberOfChannel,duration]=setProperties(valsampleRate,valnumberofbits,valnumberOfChannels,valduration);
srate=sprintf('%s %d \n','Sample Rate: ',sapleRate);
nbits=sprintf('%s %d \n','Number of Bits: ',numberOfBits);
nchan=sprintf('%s %d \n','Number of Channels: ',numberOfChannel);
durtn=sprintf('%s %d Seconds \n','Duration : ',duration);

set(handles.lblsamplrate,'string', srate)
set(handles.lblnumberofbits,'string',nbits)
set(handles.lblnochannel,'string',nchan)
set(handles.lblduration,'string',durtn)


% --- Executes during object creation, after setting all properties.
function numberOfChannels_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numberOfChannels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background gon Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes gon button press in next.
function next_Callback(hObject, eventdata, handles)
% hObject    handle to next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
while(1)
    valsampleRate=get(handles.sampleRate,'value');
    valnumberofbits=get(handles.numberofBis,'value');
    valnumberOfChannels=get(handles.numberOfChannels,'value');
    valduration=get(handles.duration,'value');
    axeson=get(handles.aon,'value');
    gridon=get(handles.gon,'value');

    set(handles.lblStatus,'string','Setting your properties...')
    [sapleRate,numberOfBits,numberOfChannel,duration]=setProperties(valsampleRate,valnumberofbits,valnumberOfChannels,valduration);

    set(handles.lblStatus,'String','Analysing Data...')

    %[data,Fs,blocksize]=recAndAnalyse(sapleRate,numberOfBits,numberOfChannel,duration);
    %___________________________________________________________
    AI = audiorecorder(sapleRate,numberOfBits,numberOfChannel);
    set(handles.lblStatus,'String','Start recording(Speak into mic)...')
    recordblocking(AI,duration);
    set(handles.lblStatus,'String','End of Recording...')

    ActualRate=sapleRate;
    SamplesPerTrigger=duration*ActualRate;

    data=getaudiodata(AI);
    Fs = ActualRate;
    blocksize=SamplesPerTrigger;

    delete(AI)
    clear AI

    set(handles.lblStatus,'String','Calculating...')
    [f,mag] = daqdocfft(data,Fs,blocksize);


    set(handles.lblStatus,'String','Plotting...')
    %myPlot(f,mag,axeson,gridon)
    %_____________________________
    handles.axes1
    plot(f,mag)

    if gridon==1
        grid on
    else
        grid off
    end

    if axeson==1
         axis on
    else
         axis off
    end

    ylabel('Magnitude (dB)')
    xlabel('Frequency (Hz)')
    %______________________________
    %calculating...
    set(handles.lblStatus,'String','Calculating Frequency components...')

    [ymax,maxindex0]= max(mag);
    % %Finding first harmonic frequency:
    mag1=mag(maxindex0+50:2500);
    [y1max,max2]=max(mag1);
     maxindex1=maxindex0+max2+48;

     %Finding second harmonic frequency:
     mag2=mag(maxindex1+50:2500);
    [y2max,max3]=max(mag2);
     maxindex2=maxindex1+max3+48;

     f0=sprintf('Fundementel Frequency : %dHz \n ',maxindex0-1);
     f1=sprintf('2nd harmonic Frequency : %dHz \n ',maxindex1);
     f2=sprintf('3rd harmonic Frequency : %dHz \n ',maxindex2);

    set(handles.lblfr0,'String',f0)
    set(handles.lblf1,'String',f1)
    set(handles.lblf2,'String',f2)

    set(handles.lblStatus,'String','Finish...')
end


% --- Executes gon button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Exit_confirmation

% --- Executes gon selection change in numberofBis.
function numberofBis_Callback(hObject, eventdata, handles)
% hObject    handle to numberofBis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns numberofBis contents as cell array
%        contents{get(hObject,'Value')} returns selected item from numberofBis
valsampleRate=get(handles.sampleRate,'value');
valnumberofbits=get(hObject,'value');
valnumberOfChannels=get(handles.numberOfChannels,'value');
valduration=get(handles.duration,'value');

[sapleRate,numberOfBits,numberOfChannel,duration]=setProperties(valsampleRate,valnumberofbits,valnumberOfChannels,valduration);
srate=sprintf('%s %d \n','Sample Rate: ',sapleRate);
nbits=sprintf('%s %d \n','Number of Bits: ',numberOfBits);
nchan=sprintf('%s %d \n','Number of Channels: ',numberOfChannel);
durtn=sprintf('%s %d Seconds \n','Duration : ',duration);

set(handles.lblsamplrate,'string', srate)
set(handles.lblnumberofbits,'string',nbits)
set(handles.lblnochannel,'string',nchan)
set(handles.lblduration,'string',durtn)


% --- Executes during object creation, after setting all properties.
function numberofBis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numberofBis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background gon Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over aon.
function aon_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to aon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.axes1
axis on


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over aoff.
function aoff_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to aoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.axes1
axis off


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over gon.
function gon_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to gon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.axes1
grid on
% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over goff.
function goff_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to goff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.axes1
grid on
