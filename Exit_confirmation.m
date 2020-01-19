function varargout = Exit_confirmation(varargin)
% EXIT_CONFIRMATION MATLAB code for Exit_confirmation.fig
%      EXIT_CONFIRMATION, by itself, creates a new EXIT_CONFIRMATION or raises the existing
%      singleton*.
%
%      H = EXIT_CONFIRMATION returns the handle to a new EXIT_CONFIRMATION or the handle to
%      the existing singleton*.
%
%      EXIT_CONFIRMATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXIT_CONFIRMATION.M with the given input arguments.
%
%      EXIT_CONFIRMATION('Property','Value',...) creates a new EXIT_CONFIRMATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Exit_confirmation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Exit_confirmation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Exit_confirmation

% Last Modified by GUIDE v2.5 23-Dec-2016 20:29:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Exit_confirmation_OpeningFcn, ...
                   'gui_OutputFcn',  @Exit_confirmation_OutputFcn, ...
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


% --- Executes just before Exit_confirmation is made visible.
function Exit_confirmation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Exit_confirmation (see VARARGIN)

% Choose default command line output for Exit_confirmation
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Exit_confirmation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Exit_confirmation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in yes.
function yes_Callback(hObject, eventdata, handles)
% hObject    handle to yes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all
close all

% --- Executes on button press in no.
function no_Callback(hObject, eventdata, handles)
% hObject    handle to no (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Exit_confirmation)