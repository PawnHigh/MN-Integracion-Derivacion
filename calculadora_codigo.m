classdef definitivo < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                   matlab.ui.Figure
        TabGroup                   matlab.ui.container.TabGroup
        TeoriaTab                  matlab.ui.container.Tab
        METODOSNUMERICOSLabel      matlab.ui.control.Label
        TEORIAButton               matlab.ui.control.StateButton
        TEORIAButton_2             matlab.ui.control.Button
        DERIVACIONLabel_2          matlab.ui.control.Label
        INTEGRACIONLabel_2         matlab.ui.control.Label
        TextArea_3                 matlab.ui.control.TextArea
        TextArea_4                 matlab.ui.control.TextArea
        TextArea_5                 matlab.ui.control.TextArea
        IntegracionTab_2           matlab.ui.container.Tab
        TabGroup2                  matlab.ui.container.TabGroup
        MetodosTab                 matlab.ui.container.Tab
        trapecio                   matlab.ui.control.Button
        ResultadoEditFieldLabel    matlab.ui.control.Label
        result                     matlab.ui.control.EditField
        trapecio_2                 matlab.ui.control.Button
        trapecio_3                 matlab.ui.control.Button
        MetodosBasicosLabel        matlab.ui.control.Label
        TrapecioCTab               matlab.ui.container.Tab
        trap_b                     matlab.ui.control.Button
        NdeintervalosLabel         matlab.ui.control.Label
        trap_n                     matlab.ui.control.NumericEditField
        ResultadoEditFieldLabel_4  matlab.ui.control.Label
        trap_r                     matlab.ui.control.EditField
        MTrapecioCompuestoLabel    matlab.ui.control.Label
        Button_img                 matlab.ui.control.Button
        Simpson13CTab              matlab.ui.container.Tab
        sim_b                      matlab.ui.control.Button
        NdePuntosLabel_4           matlab.ui.control.Label
        sim_n                      matlab.ui.control.NumericEditField
        ResultadoEditFieldLabel_5  matlab.ui.control.Label
        sim_r                      matlab.ui.control.EditField
        Lamp_3                     matlab.ui.control.Lamp
        MSimpson13CompuestoLabel   matlab.ui.control.Label
        Button_img_2               matlab.ui.control.Button
        Simpson38CTab              matlab.ui.container.Tab
        simp_b                     matlab.ui.control.Button
        NdeIntervalosLabel         matlab.ui.control.Label
        simp_n                     matlab.ui.control.NumericEditField
        ResultadoEditFieldLabel_6  matlab.ui.control.Label
        simp_r                     matlab.ui.control.EditField
        Lamp                       matlab.ui.control.Lamp
        MSimpson38CompuestoLabel   matlab.ui.control.Label
        Button_img_3               matlab.ui.control.Button
        RombergTab                 matlab.ui.container.Tab
        romberg                    matlab.ui.control.Button
        NdeNivelesLabel            matlab.ui.control.Label
        value_n                    matlab.ui.control.NumericEditField
        ResultadoEditFieldLabel_7  matlab.ui.control.Label
        value_res                  matlab.ui.control.EditField
        MRombergLabel              matlab.ui.control.Label
        Button_img_4               matlab.ui.control.Button
        CGaussTab_2                matlab.ui.container.Tab
        trap_b_2                   matlab.ui.control.Button
        CuadraturaGaussLabel       matlab.ui.control.Label
        Button_img_5               matlab.ui.control.Button
        NpuntosLabel               matlab.ui.control.Label
        trap_n_2                   matlab.ui.control.NumericEditField
        ResultadoEditFieldLabel_8  matlab.ui.control.Label
        trap_r_2                   matlab.ui.control.EditField
        axes                       matlab.ui.control.UIAxes
        FuncionfxLabel             matlab.ui.control.Label
        funcion                    matlab.ui.control.EditField
        ALabel                     matlab.ui.control.Label
        valor_a                    matlab.ui.control.NumericEditField
        BEditFieldLabel            matlab.ui.control.Label
        valor_b                    matlab.ui.control.NumericEditField
        graficar_btn               matlab.ui.control.Button
        lampara                    matlab.ui.control.Lamp
        DerivacionTab              matlab.ui.container.Tab
        DIFERENCIASFINITASLabel    matlab.ui.control.Label
        RegresivasPanel            matlab.ui.container.Panel
        PrimeraDerivadaLabel       matlab.ui.control.Label
        OhButton                   matlab.ui.control.Button
        Oh2Button                  matlab.ui.control.Button
        SegundaDerivadaLabel       matlab.ui.control.Label
        OhButton_2                 matlab.ui.control.Button
        Oh2Button_2                matlab.ui.control.Button
        OhButton_3                 matlab.ui.control.Button
        Oh2Button_3                matlab.ui.control.Button
        TerceraDerivadaLabel       matlab.ui.control.Label
        FxEditFieldLabel           matlab.ui.control.Label
        aproximacion               matlab.ui.control.EditField
        CentradasPanel             matlab.ui.container.Panel
        PrimeraDerivadaLabel_2     matlab.ui.control.Label
        Oh2Button_10               matlab.ui.control.Button
        Oh4Button                  matlab.ui.control.Button
        SegundaDerivadaLabel_2     matlab.ui.control.Label
        Oh2Button_11               matlab.ui.control.Button
        Oh4Button_2                matlab.ui.control.Button
        TerceraDerivadaLabel_2     matlab.ui.control.Label
        Oh2Button_12               matlab.ui.control.Button
        Oh4Button_3                matlab.ui.control.Button
        FxEditField_2Label         matlab.ui.control.Label
        FxEditField_2              matlab.ui.control.EditField
        ProgresivasPanel           matlab.ui.container.Panel
        PrimeraDerivadaLabel_3     matlab.ui.control.Label
        OhButton_7                 matlab.ui.control.Button
        Oh2Button_7                matlab.ui.control.Button
        SegundaDerivadaLabel_3     matlab.ui.control.Label
        OhButton_8                 matlab.ui.control.Button
        Oh2Button_8                matlab.ui.control.Button
        TerceraDerivadaLabel_3     matlab.ui.control.Label
        OhButton_9                 matlab.ui.control.Button
        Oh2Button_9                matlab.ui.control.Button
        FxEditField_3Label         matlab.ui.control.Label
        FxEditField_3              matlab.ui.control.EditField
        FuncionfxEditFieldLabel    matlab.ui.control.Label
        derivacion                 matlab.ui.control.EditField
        XEditFieldLabel            matlab.ui.control.Label
        derivado                   matlab.ui.control.NumericEditField
        HEditFieldLabel            matlab.ui.control.Label
        paso                       matlab.ui.control.NumericEditField
        DerivacionIITab            matlab.ui.container.Tab
        RegresivasPanel_2          matlab.ui.container.Panel
        PrimeraDerivadaLabel_4     matlab.ui.control.Label
        OhButton_10                matlab.ui.control.Button
        Oh2Button_13               matlab.ui.control.Button
        SegundaDerivadaLabel_4     matlab.ui.control.Label
        OhButton_11                matlab.ui.control.Button
        Oh2Button_14               matlab.ui.control.Button
        OhButton_12                matlab.ui.control.Button
        Oh2Button_15               matlab.ui.control.Button
        TerceraDerivadaLabel_4     matlab.ui.control.Label
        FxEditFieldLabel_2         matlab.ui.control.Label
        aproximacion_2             matlab.ui.control.EditField
        CentradasPanel_2           matlab.ui.container.Panel
        PrimeraDerivadaLabel_5     matlab.ui.control.Label
        Oh2Button_16               matlab.ui.control.Button
        Oh4Button_4                matlab.ui.control.Button
        SegundaDerivadaLabel_5     matlab.ui.control.Label
        Oh2Button_17               matlab.ui.control.Button
        Oh4Button_5                matlab.ui.control.Button
        TerceraDerivadaLabel_5     matlab.ui.control.Label
        Oh2Button_18               matlab.ui.control.Button
        Oh4Button_6                matlab.ui.control.Button
        FxEditField_4Label         matlab.ui.control.Label
        FxEditField_4              matlab.ui.control.EditField
        ProgresivasPanel_2         matlab.ui.container.Panel
        PrimeraDerivadaLabel_6     matlab.ui.control.Label
        OhButton_13                matlab.ui.control.Button
        Oh2Button_19               matlab.ui.control.Button
        SegundaDerivadaLabel_6     matlab.ui.control.Label
        OhButton_14                matlab.ui.control.Button
        Oh2Button_20               matlab.ui.control.Button
        TerceraDerivadaLabel_6     matlab.ui.control.Label
        OhButton_15                matlab.ui.control.Button
        Oh2Button_21               matlab.ui.control.Button
        FxEditField_5Label         matlab.ui.control.Label
        FxEditField_5              matlab.ui.control.EditField
        IngresesuarchivoButton     matlab.ui.control.Button
        XEditFieldLabel_2          matlab.ui.control.Label
        derivado_2                 matlab.ui.control.NumericEditField
        HEditFieldLabel_2          matlab.ui.control.Label
        paso_2                     matlab.ui.control.NumericEditField
        DIFERENCIASFINITASLabel_2  matlab.ui.control.Label
        excel_img                  matlab.ui.control.Button
    end


    properties (Access = public)
        Property % Description
         datax;
         datay;
         data_size;
         p;
    end

    methods (Access = private)
        function [x,w] = Gauss(app,n)
            x = zeros(n,1);                                            
            w = x;
            m = (n+1)/2;
            for ii=1:m
                z = cos(pi*(ii-.25)/(n+.5));                        % estimado Inicial.
                z1 = z+1;
            while abs(z-z1)>eps
                p1 = 1;
                p2 = 0;
                for jj = 1:n
                    p3 = p2;
                    p2 = p1;
                    p1 = ((2*jj-1)*z*p2-(jj-1)*p3)/jj;       % El polinomial. Legendre 
                end
                pp = n*(z*p1-p2)/(z^2-1);                        % La L.P. Derivada.
                z1 = z;
                z = z1-p1/pp;
            end
                x(ii) = -z;                                   % Construye las abscissas.
                x(n+1-ii) = z;
                w(ii) = 2/((1-z^2)*(pp^2));                     % Construye  los pesos.
                w(n+1-ii) = w(ii);
            end
        end
    %--------------------------------------------------------------
    
    end


    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
          
        end

        % Button pushed function: graficar_btn
        function graficar_btnButtonPushed(app, event)
            cla(app.axes,"reset");
            a = app.valor_a.Value;
            b = app.valor_b.Value;
            f = char(app.funcion.Value);
            try
                if a > b || a==b
                    app.lampara.Color = [1 0 0];
                    e_1 = errordlg('Datos de intervalos incorrectos','Error de datos de entrada');
                    
                    app.trapecio.Enable = 'off';
                    app.trapecio_2.Enable = 'off';
                    app.trapecio_3.Enable = 'off';
                    app.trap_b.Enable = 'off';
                    app.sim_b.Enable = 'off';
                    app.simp_b.Enable = 'off';
                    app.romberg.Enable = 'off';
                    
                    
                else
                    x = app.valor_a.Value:0.001:app.valor_b.Value;
                    f=inline(f);
                    y =feval(f,x);
                    plot(app.axes,x,y); 
                    
                    app.lampara.Color = [0 1 0];
                    app.trapecio.Enable = 'on';
                    app.trapecio_2.Enable = 'on';
                    app.trapecio_3.Enable = 'on';
                    app.trap_b.Enable = 'on';
                    app.sim_b.Enable = 'on';
                    app.simp_b.Enable = 'on';
                    app.romberg.Enable = 'on';
                    app.trap_b_2.Enable = 'on';
                end
            catch
                app.lampara.Color = [1 0 0];
                    app.trapecio.Enable = 'off';
                    app.trapecio_2.Enable = 'off';
                    app.trapecio_3.Enable = 'off';
                    app.trap_b.Enable = 'off';
                    app.sim_b.Enable = 'off';
                    app.simp_b.Enable = 'off';
                    app.romberg.Enable = 'off';
                    
                 e_2 = errordlg('Su funcion ingresada no es valida, por favor ingrese otra','Error de Funcion');
            end
                
        end

        % Button pushed function: trapecio
        function trapecioButtonPushed(app, event)
            a = app.valor_a.Value;
            b = app.valor_b.Value;
            f=char(app.funcion.Value);
            f=inline(f);
            res=((b-a)/2)*(f(a)+f(b));
            app.result.Value = num2str(res);
            
        end

        % Callback function
        function simpsonButtonPushed(app, event)
            
        end

        % Callback function
        function simpson_2ButtonPushed(app, event)
           
        end

        % Button pushed function: trap_b
        function trap_bButtonPushed(app, event)
            a = app.valor_a.Value;
            b = app.valor_b.Value;
            f=char(app.funcion.Value);
            n = app.trap_n.Value;
            if n ~= 0
               f=inline(f);
                h=((b-a)/(2*n));
                sumxi=0;
                for i=1:n-1
                    x=a+h*(2*i);
                    sumxi=sumxi+feval(f,x);
                end
                res =((b-a)/(2*n))*(f(a)+ 2*sumxi + f(b));
                app.trap_r.Value = num2str(res); 
            else
                e_7 = errordlg('Numero de intervalos no valido','Error de datos de entrada');
            end
            
        end

        % Button pushed function: sim_b
        function sim_bButtonPushed(app, event)
            a = app.valor_a.Value;
            b = app.valor_b.Value;
            f=char(app.funcion.Value);
            n = app.sim_n.Value;
            if mod(n,3) ~= 0 || n ~= 0
                app.Lamp_3.Color = [0 1 0];
                f=inline(f);
                h=(b-a)/(2*n);
                sumxi=0;
                for i=1:n-1
                    x=a+h*(2*i);
                    sumxi=sumxi+feval(f,x);
                end
                sumxmi=0;
                for i=1:n
                    x=a+h*(2*i-1);
                    sumxmi=sumxmi+feval(f,x);
                end
                res=((b-a)/(6*n))*(f(a)+ 4*sumxmi + 2*sumxi + f(b));
                app.sim_r.Value = num2str(res);
            else
                e_s = errordlg('Numero de intervalos no valido','Error de datos de entrada');
                app.Lamp_3.Color = [1 0 0];
                res=0;
                app.sim_r.Value = num2str(res);
            
            end
            
            
        end

        % Button pushed function: simp_b
        function simp_bButtonPushed(app, event)
            a = app.valor_a.Value;
            b = app.valor_b.Value;
            f=char(app.funcion.Value);
            n = app.simp_n.Value;
            if mod(n,3) == 0 & n ~= 0
                app.Lamp.Color = [0 1 0];
                f=inline(f);
                h =(b-a)/(2*n);
                f0=0;
                for i=1:n-1
                    x=a+h*(2*i);
                    f0=f0+f(x);
                end
                f1=0;
                for i=1:n
                    x=a+h*(2*i-1);
                    f1=f1+f(x);
                end
                f0=2*f0+4*f1;
                f0=f0+f(a)+f(b);
                res=(h/3)*f0;
                app.simp_r.Value = num2str(res);
            else
                e_5 = errordlg('Numero de intervalos no valido','Error de datos de entrada');
                app.Lamp.Color = [1 0 0];
                res=0;
                app.simp_r.Value = num2str(res);
            end
        end

        % Button pushed function: trapecio_2
        function trapecio_2ButtonPushed(app, event)
            a = app.valor_a.Value;
            b = app.valor_b.Value;
            f=char(app.funcion.Value);
            f=inline(f);
            res=((b-a)/6)*(f(a)+4*f((a+b)/2)+f(b));
            app.result.Value = num2str(res);
        end

        % Button pushed function: trapecio_3
        function trapecio_3ButtonPushed(app, event)
            a = app.valor_a.Value;
            b = app.valor_b.Value;
            f=char(app.funcion.Value);
            f=inline(f);
            h=((b-a)/3);
            x=a;
            sum=0;
            for i=2:3
                x= x + h;
                sum=sum + 3*f(x);
            end
            res=((b-a)/8)*(f(a)+sum +f(b));
            app.result.Value = num2str(res);
        end

        % Button pushed function: romberg
        function rombergButtonPushed(app, event)
            a = app.valor_a.Value;
            b = app.valor_b.Value;
            n = app.value_n.Value;
            fun=char(app.funcion.Value);
            
            %
            h=(b-a);
            M=1;
            J=0;
            R=zeros(n,n);
            x=a;
            f1=eval(fun);
            x=b;
            f2=eval(fun);
            R(1,1)=h*(f1+f2)/2;
            while(J<(n-1))
                 J=J+1;
                 h=h/2;
                 s=0;
                 for p=1:M
                     x=a+h*(2*p-1);
                     f3=eval(fun);
                     s=s+f3;
                 end
                 R(J+1,1)=(1/2)*(R(J,1))+h*s;
                 M=2*M;
                 for k=1:J
                     R(J+1,k+1)=R(J+1,k)+(R(J+1,k)-R(J,k))/(4^k-1);
                 end
            end
            i=R(J+1,J+1);
            app.value_res.Value = num2str(i);
            
        end

        % Value changed function: TEORIAButton
        function TEORIAButtonValueChanged(app, event)
            %value = app.TEORIAButton.Value;
            dos('explorer https://mn-deriva-integra.web.app/inicio');
        end

        % Button pushed function: TEORIAButton_2
        function TEORIAButton_2Pushed(app, event)
            dos('explorer https://mn-deriva-integra.web.app/inicio');
        end

        % Button pushed function: OhButton
        function OhButtonPushed(app, event)
         
            try
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=f(x) - f(x-h);
                res = res/h;
                
                app.aproximacion.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh2Button
        function Oh2ButtonPushed(app, event)
            try
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=3*f(x) - 4*f(x-h)+ f(x-2*h);
                res = res/(2*h);
                
                app.aproximacion.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: OhButton_2
        function OhButton_2Pushed(app, event)
            try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=f(x)- 2*f(x-h)+ f(x-2*h);
                res = res/(h*h);
                
                app.aproximacion.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh2Button_2
        function Oh2Button_2Pushed(app, event)
             try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=2*f(x) - 5*f(x-h)+ 4*f(x-2*h)-f(x-3*h);
                res = res/(h*h);
                
                app.aproximacion.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: OhButton_3
        function OhButton_3Pushed(app, event)
             try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=f(x) - 3*f(x-h)+ 3*f(x-2*h)-f(x-3*h);
                res = res/(h*h*h);
                
                app.aproximacion.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh2Button_3
        function Oh2Button_3Pushed(app, event)
            try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=5*f(x) - 18*f(x-h)+ 24*f(x-2*h)-14*f(x-3*h)+3*f(x-4*h);
                res = res/(2*h*h*h);
                
                app.aproximacion.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh2Button_10
        function Oh2Button_10Pushed(app, event)
            try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=f(x+h)-f(x-h);
                res = res/(2*h);
                
                app.FxEditField_2.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh4Button
        function Oh4ButtonPushed(app, event)
             try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=-f(x+2*h) +8*f(x+h)-8*f(x-h)+f(x-2*h);
                res = res/(12*h);
                
                app.FxEditField_2.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh2Button_11
        function Oh2Button_11Pushed(app, event)
               try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res= f(x+h) -2*f(x) + f(x-h);
                res = res/(h*h);
                
                app.FxEditField_2.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh4Button_2
        function Oh4Button_2Pushed(app, event)
               try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res= -f(x+2*h) +16*f(x+h) -30*f(x) +16*f(x-h) -f(x-2*h);
                res = res/(12*h*h);
                
                app.FxEditField_2.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh2Button_12
        function Oh2Button_12Pushed(app, event)
               try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=f(x+2*h)-2*f(x+h)+2*f(x-h) -f(x-2*h);
                res = res/(2*h*h*h);
                
                app.FxEditField_2.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh4Button_3
        function Oh4Button_3Pushed(app, event)
               try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=-f(x+3*h) +8*f(x+2*h)-13*f(x+h)+13*f(x-h)-8*f(x-2*h)+f(x-3*h);
                res = res/(8*h*h*h);
                
                app.FxEditField_2.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: OhButton_7
        function OhButton_7Pushed(app, event)
             try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=f(x+h)-f(x);
                res = res/(h);
                
                app.FxEditField_3.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh2Button_7
        function Oh2Button_7Pushed(app, event)
             try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=-f(x+2*h)+4*f(x+h)-3*f(x);
                res = res/(2*h);
                
                app.FxEditField_3.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: OhButton_8
        function OhButton_8Pushed(app, event)
            try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res= f(x+2*h)-2*f(x+h)+f(x);
                res = res/(h*h);
                
                app.FxEditField_3.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh2Button_8
        function Oh2Button_8Pushed(app, event)
            try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=-f(x+3*h)+4*f(x+2*h)-5*f(x+h)+2*f(x);
                res = res/(h*h);
                
                app.FxEditField_3.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: OhButton_9
        function OhButton_9Pushed(app, event)
            try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=f(x+3*h)-3*f(x+2*h)+3*f(x+h)-f(x);
                res = res/(h*h*h);
                
                app.FxEditField_3.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: Oh2Button_9
        function Oh2Button_9Pushed(app, event)
            try  
                x = app.derivado.Value;
                h = app.paso.Value;
                f = char(app.derivacion.Value);
               
                f=inline(f);
                res=-3*f(x+4*h)+14*f(x+3*h)-24*f(x+2*h)+18*f(x+h)-5*f(x);
                res = res/(2*h*h*h);
                
                app.FxEditField_3.Value = num2str(res);
            catch
                e_2 = errordlg('Sus datos ingresados no son validos');
            end
        end

        % Button pushed function: IngresesuarchivoButton
        function IngresesuarchivoButtonPushed(app, event)
            [archivo,ruta]=uigetfile('*.xlsx','Abrir un archivo de datos');
            if archivo==0
                return;
            else
                dat_archivo=strcat(ruta,archivo);
                A =xlsread(dat_archivo);
                [t1,t2]=size(A);
                app.data_size = t1;
                app.datax=A(1:t1,1)';
                app.datay=A(1:t1,2)';  
                app.p = polyfit(app.datax,app.datay,(app.data_size));
            end
        end

        % Button pushed function: OhButton_10
        function OhButton_10Pushed(app, event)
             x = app.derivado_2.Value;
             h = app.paso_2.Value;
             res=polyval(app.p,x) - polyval(app.p,(x-h));
             res = res/h;   
             app.aproximacion_2.Value = num2str(res);
        end

        % Button pushed function: Oh2Button_13
        function Oh2Button_13Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value;
            res=3*polyval(app.p,x) - 4*polyval(app.p,(x-h))+polyval(app.p,(x-2*h));
            res = res/(2*h);   
            app.aproximacion_2.Value = num2str(res);
        end

        % Button pushed function: OhButton_11
        function OhButton_11Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value;
            res=polyval(app.p,x) - 2*polyval(app.p,(x-h))+ polyval(app.p,(x-2*h));
            res = res/(h*h);   
            app.aproximacion_2.Value = num2str(res);
        end

        % Button pushed function: Oh2Button_14
        function Oh2Button_14Pushed(app, event)
x = app.derivado_2.Value;
h = app.paso_2.Value;
res=2*polyval(app.p,x) - 5*polyval(app.p,(x-h)) +4*polyval(app.p,(x-2*h)) -polyval(app.p,(x-3*h));
res = res/(h*h);   
app.aproximacion_2.Value = num2str(res);

        end

        % Button pushed function: Oh2Button_16
        function Oh2Button_16Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value
            res=polyval(app.p,x+h)-polyval(app.p,x-h);
            res = res/(2*h);
            app.FxEditField_4.Value = num2str(res);
        end

        % Button pushed function: Oh4Button_4
        function Oh4Button_4Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value
            res=-polyval(app.p,x+2*h)+8*polyval(app.p,x+h)-8*polyval(app.p,x-h)+polyval(app.p,x-2*h);
            res = res/(12*h);
            app.FxEditField_4.Value = num2str(res);          
        end

        % Button pushed function: Oh2Button_17
        function Oh2Button_17Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value
            res=polyval(app.p,x+h)-2*polyval(app.p,x) +polyval(app.p,x-h);
            res = res/(h*h);
            app.FxEditField_4.Value = num2str(res);
                     
        end

        % Button pushed function: Oh4Button_5
        function Oh4Button_5Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value
            res=-polyval(app.p,x+2*h)+16*polyval(app.p,x+h)-30*polyval(app.p,x)+16*polyval(app.p,x-h)-polyval(app.p,x-2*h);
            res = res/(12*h*h);
            app.FxEditField_4.Value = num2str(res);         
        end

        % Button pushed function: Oh2Button_18
        function Oh2Button_18Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value
            res=polyval(app.p,x+2*h)-2*polyval(app.p,x+h)+2*polyval(app.p,x-h)-polyval(app.p,x-2*h);
            res = res/(2*h*h*h);
            app.FxEditField_4.Value = num2str(res);           
        end

        % Button pushed function: Oh4Button_6
        function Oh4Button_6Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value
            res=-polyval(app.p,x+3*h)+8*polyval(app.p,x+2*h)-13*polyval(app.p,x+h)+13*polyval(app.p,x-h)-8*polyval(app.p,x-2*h)+polyval(app.p,x-3*h);
            res = res/(8*h*h*h);
            app.FxEditField_4.Value = num2str(res);
        end

        % Button pushed function: OhButton_12
        function OhButton_12Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value;
            res=polyval(app.p,x) - 3*polyval(app.p,(x-h))+ 3*polyval(app.p,(x-2*h))-polyval(app.p,x-3*h);
            res = res/(h*h*h);   
            app.aproximacion_2.Value = num2str(res);

        end

        % Button pushed function: Oh2Button_15
        function Oh2Button_15Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value;
            res=5*polyval(app.p,x) - 18*polyval(app.p,(x-h))+ 24*polyval(app.p,(x-2*h))-14*polyval(app.p,x-3*h)+3*polyval(app.p,x-4*h);
            res = res/(2*h*h*h);   
            app.aproximacion_2.Value = num2str(res);

        end

        % Button pushed function: OhButton_13
        function OhButton_13Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value;
            res=polyval(app.p,x+h) - polyval(app.p,x);
            res = res/(h);               
            app.FxEditField_5.Value = num2str(res);
        end

        % Button pushed function: Oh2Button_19
        function Oh2Button_19Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value;
            res=-polyval(app.p,x+2*h) +4*polyval(app.p,x+h)- 3*polyval(app.p,x);
            res = res/(2*h);               
            app.FxEditField_5.Value = num2str(res);
        end

        % Button pushed function: OhButton_14
        function OhButton_14Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value;
            res=polyval(app.p,x+2*h) - 2*polyval(app.p,x+h)+polyval(app.p,x);
            res = res/(h*h);               
            app.FxEditField_5.Value = num2str(res); 
        end

        % Button pushed function: Oh2Button_20
        function Oh2Button_20Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value;
            res=-polyval(app.p,x+3*h) +4*polyval(app.p,x+2*h)-5*polyval(app.p,x+h)+2*polyval(app.p,x);
            res = res/(h*h);               
            app.FxEditField_5.Value = num2str(res);  

        end

        % Button pushed function: OhButton_15
        function OhButton_15Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value;
            res=polyval(app.p,x+3*h) - 3*polyval(app.p,x+2*h)+3*polyval(app.p,x+h)-polyval(app.p,x);
            res = res/(h*h*h);               
            app.FxEditField_5.Value = num2str(res);
        end

        % Button pushed function: Oh2Button_21
        function Oh2Button_21Pushed(app, event)
            x = app.derivado_2.Value;
            h = app.paso_2.Value;
            res=-3*polyval(app.p,x+4*h) +14*polyval(app.p,x+3*h) -24*polyval(app.p,x+2*h)+18*polyval(app.p,x+h)-5*polyval(app.p,x);
            res = res/(2*h*h*h);               
            app.FxEditField_5.Value = num2str(res);  

        end

        % Button pushed function: trap_b_2
        function trap_b_2ButtonPushed(app, event)
            a = app.valor_a.Value;
            b = app.valor_b.Value;
            f=char(app.funcion.Value);
            n = app.trap_n_2.Value;
            [punto,peso] = Gauss(app,n);
            [posx,posy]= size(punto);
            
            f=inline(f);
            res =0;
            for i=1:posx
                res = res + feval(f,((b-a)/2)*punto(i) + (b+a)/2)*peso(i);
            end
            
            res = ((b-a)/2)*res;
            app.trap_r_2.Value = num2str(res); 
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [1 1 1];
            app.UIFigure.Position = [100 100 921 573];
            app.UIFigure.Name = 'UI Figure';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 1 921 573];

            % Create TeoriaTab
            app.TeoriaTab = uitab(app.TabGroup);
            app.TeoriaTab.Title = 'Teoria';
            app.TeoriaTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create METODOSNUMERICOSLabel
            app.METODOSNUMERICOSLabel = uilabel(app.TeoriaTab);
            app.METODOSNUMERICOSLabel.HorizontalAlignment = 'center';
            app.METODOSNUMERICOSLabel.FontName = 'Comic Sans MS';
            app.METODOSNUMERICOSLabel.FontSize = 36;
            app.METODOSNUMERICOSLabel.FontWeight = 'bold';
            app.METODOSNUMERICOSLabel.FontColor = [0 0.451 0.7412];
            app.METODOSNUMERICOSLabel.Position = [53 375 455 134];
            app.METODOSNUMERICOSLabel.Text = 'METODOS NUMERICOS';

            % Create TEORIAButton
            app.TEORIAButton = uibutton(app.TeoriaTab, 'state');
            app.TEORIAButton.ValueChangedFcn = createCallbackFcn(app, @TEORIAButtonValueChanged, true);
            app.TEORIAButton.Icon = 'integrar.png';
            app.TEORIAButton.Text = 'TEORIA';
            app.TEORIAButton.BackgroundColor = [0.0824 0.2667 0.4353];
            app.TEORIAButton.FontName = 'Comic Sans MS';
            app.TEORIAButton.FontSize = 16;
            app.TEORIAButton.FontColor = [1 1 1];
            app.TEORIAButton.Position = [199 94 122 35];

            % Create TEORIAButton_2
            app.TEORIAButton_2 = uibutton(app.TeoriaTab, 'push');
            app.TEORIAButton_2.ButtonPushedFcn = createCallbackFcn(app, @TEORIAButton_2Pushed, true);
            app.TEORIAButton_2.Icon = 'derivar.png';
            app.TEORIAButton_2.BackgroundColor = [0.6745 0.1529 0.2431];
            app.TEORIAButton_2.FontName = 'Comic Sans MS';
            app.TEORIAButton_2.FontSize = 16;
            app.TEORIAButton_2.FontColor = [1 1 1];
            app.TEORIAButton_2.Position = [580 94 116 35];
            app.TEORIAButton_2.Text = 'TEORIA';

            % Create DERIVACIONLabel_2
            app.DERIVACIONLabel_2 = uilabel(app.TeoriaTab);
            app.DERIVACIONLabel_2.HorizontalAlignment = 'center';
            app.DERIVACIONLabel_2.FontName = 'Comic Sans MS';
            app.DERIVACIONLabel_2.FontSize = 24;
            app.DERIVACIONLabel_2.FontWeight = 'bold';
            app.DERIVACIONLabel_2.FontColor = [0.6745 0.1529 0.2431];
            app.DERIVACIONLabel_2.Position = [507 298 262 47];
            app.DERIVACIONLabel_2.Text = 'DERIVACION';

            % Create INTEGRACIONLabel_2
            app.INTEGRACIONLabel_2 = uilabel(app.TeoriaTab);
            app.INTEGRACIONLabel_2.HorizontalAlignment = 'center';
            app.INTEGRACIONLabel_2.FontName = 'Comic Sans MS';
            app.INTEGRACIONLabel_2.FontSize = 24;
            app.INTEGRACIONLabel_2.FontWeight = 'bold';
            app.INTEGRACIONLabel_2.FontColor = [0.0824 0.2667 0.4353];
            app.INTEGRACIONLabel_2.Position = [129 298 262 47];
            app.INTEGRACIONLabel_2.Text = 'INTEGRACION ';

            % Create TextArea_3
            app.TextArea_3 = uitextarea(app.TeoriaTab);
            app.TextArea_3.HorizontalAlignment = 'center';
            app.TextArea_3.FontSize = 16;
            app.TextArea_3.FontColor = [0.0824 0.2667 0.4353];
            app.TextArea_3.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_3.Position = [118 144 284 121];
            app.TextArea_3.Value = {'Existe una amplia gama de algoritmos para calcular el valor numérico de una integral definida. Con ayuda de esta herramienta  aprender estos metodos'; ''};

            % Create TextArea_4
            app.TextArea_4 = uitextarea(app.TeoriaTab);
            app.TextArea_4.HorizontalAlignment = 'center';
            app.TextArea_4.FontSize = 16;
            app.TextArea_4.FontColor = [0.6745 0.1529 0.2431];
            app.TextArea_4.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_4.Position = [496 144 284 121];
            app.TextArea_4.Value = {'Aprende a calcular la aproximacion'; ' de la derivacion numerica de un '; 'punto mediante los algoritmos con'; 'ayuda de esta herramienta'};

            % Create TextArea_5
            app.TextArea_5 = uitextarea(app.TeoriaTab);
            app.TextArea_5.Editable = 'off';
            app.TextArea_5.FontSize = 10;
            app.TextArea_5.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_5.Position = [1 1 199 68];
            app.TextArea_5.Value = {'Proyecto MN Integrantes:'; 'Alexis Arroyo Huarachi'; 'Gerardo Portocarrero Banda'; 'Luis Armando Gomez Pomari'; 'Mayer Cutipa Condori'; ''; ''; ''};

            % Create IntegracionTab_2
            app.IntegracionTab_2 = uitab(app.TabGroup);
            app.IntegracionTab_2.Title = 'Integracion';
            app.IntegracionTab_2.BackgroundColor = [0.902 0.902 0.902];

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.IntegracionTab_2);
            app.TabGroup2.Position = [555 0 364 549];

            % Create MetodosTab
            app.MetodosTab = uitab(app.TabGroup2);
            app.MetodosTab.Title = 'Metodos';
            app.MetodosTab.BackgroundColor = [1 1 1];
            app.MetodosTab.ForegroundColor = [0.149 0.149 0.149];

            % Create trapecio
            app.trapecio = uibutton(app.MetodosTab, 'push');
            app.trapecio.ButtonPushedFcn = createCallbackFcn(app, @trapecioButtonPushed, true);
            app.trapecio.BackgroundColor = [0.4706 0.6706 0.1882];
            app.trapecio.FontColor = [1 1 1];
            app.trapecio.Enable = 'off';
            app.trapecio.Position = [141 335 100 38];
            app.trapecio.Text = 'Trapecio';

            % Create ResultadoEditFieldLabel
            app.ResultadoEditFieldLabel = uilabel(app.MetodosTab);
            app.ResultadoEditFieldLabel.HorizontalAlignment = 'right';
            app.ResultadoEditFieldLabel.FontSize = 16;
            app.ResultadoEditFieldLabel.FontWeight = 'bold';
            app.ResultadoEditFieldLabel.FontColor = [0.4706 0.6706 0.1882];
            app.ResultadoEditFieldLabel.Position = [53 52 83 22];
            app.ResultadoEditFieldLabel.Text = 'Resultado';

            % Create result
            app.result = uieditfield(app.MetodosTab, 'text');
            app.result.Editable = 'off';
            app.result.FontColor = [0.149 0.149 0.149];
            app.result.Position = [151 52 100 22];
            app.result.Value = '0';

            % Create trapecio_2
            app.trapecio_2 = uibutton(app.MetodosTab, 'push');
            app.trapecio_2.ButtonPushedFcn = createCallbackFcn(app, @trapecio_2ButtonPushed, true);
            app.trapecio_2.BackgroundColor = [0.4706 0.6706 0.1882];
            app.trapecio_2.FontColor = [1 1 1];
            app.trapecio_2.Enable = 'off';
            app.trapecio_2.Position = [141 244 100 38];
            app.trapecio_2.Text = 'Simpson 1/3';

            % Create trapecio_3
            app.trapecio_3 = uibutton(app.MetodosTab, 'push');
            app.trapecio_3.ButtonPushedFcn = createCallbackFcn(app, @trapecio_3ButtonPushed, true);
            app.trapecio_3.BackgroundColor = [0.4706 0.6706 0.1882];
            app.trapecio_3.FontColor = [1 1 1];
            app.trapecio_3.Enable = 'off';
            app.trapecio_3.Position = [141 147 100 38];
            app.trapecio_3.Text = 'Simpson 3/8';

            % Create MetodosBasicosLabel
            app.MetodosBasicosLabel = uilabel(app.MetodosTab);
            app.MetodosBasicosLabel.HorizontalAlignment = 'center';
            app.MetodosBasicosLabel.FontSize = 20;
            app.MetodosBasicosLabel.FontWeight = 'bold';
            app.MetodosBasicosLabel.FontColor = [0.4706 0.6706 0.1882];
            app.MetodosBasicosLabel.Position = [67 466 230 46];
            app.MetodosBasicosLabel.Text = 'Metodos Basicos';

            % Create TrapecioCTab
            app.TrapecioCTab = uitab(app.TabGroup2);
            app.TrapecioCTab.Title = 'Trapecio C.';
            app.TrapecioCTab.BackgroundColor = [1 1 1];

            % Create trap_b
            app.trap_b = uibutton(app.TrapecioCTab, 'push');
            app.trap_b.ButtonPushedFcn = createCallbackFcn(app, @trap_bButtonPushed, true);
            app.trap_b.BackgroundColor = [0 0.451 0.7412];
            app.trap_b.FontColor = [1 1 1];
            app.trap_b.Enable = 'off';
            app.trap_b.Position = [199 157 100 38];
            app.trap_b.Text = 'Calcular';

            % Create NdeintervalosLabel
            app.NdeintervalosLabel = uilabel(app.TrapecioCTab);
            app.NdeintervalosLabel.HorizontalAlignment = 'right';
            app.NdeintervalosLabel.FontSize = 16;
            app.NdeintervalosLabel.FontColor = [0 0.451 0.7412];
            app.NdeintervalosLabel.Position = [72 252 112 22];
            app.NdeintervalosLabel.Text = 'N de intervalos';

            % Create trap_n
            app.trap_n = uieditfield(app.TrapecioCTab, 'numeric');
            app.trap_n.FontSize = 16;
            app.trap_n.FontColor = [0.149 0.149 0.149];
            app.trap_n.Position = [199 252 99 22];
            app.trap_n.Value = 1;

            % Create ResultadoEditFieldLabel_4
            app.ResultadoEditFieldLabel_4 = uilabel(app.TrapecioCTab);
            app.ResultadoEditFieldLabel_4.HorizontalAlignment = 'right';
            app.ResultadoEditFieldLabel_4.FontSize = 16;
            app.ResultadoEditFieldLabel_4.FontColor = [0 0.451 0.7412];
            app.ResultadoEditFieldLabel_4.Position = [105 82 78 22];
            app.ResultadoEditFieldLabel_4.Text = 'Resultado';

            % Create trap_r
            app.trap_r = uieditfield(app.TrapecioCTab, 'text');
            app.trap_r.Editable = 'off';
            app.trap_r.FontColor = [0.149 0.149 0.149];
            app.trap_r.Position = [198 82 100 22];
            app.trap_r.Value = '0';

            % Create MTrapecioCompuestoLabel
            app.MTrapecioCompuestoLabel = uilabel(app.TrapecioCTab);
            app.MTrapecioCompuestoLabel.HorizontalAlignment = 'center';
            app.MTrapecioCompuestoLabel.FontSize = 20;
            app.MTrapecioCompuestoLabel.FontWeight = 'bold';
            app.MTrapecioCompuestoLabel.FontColor = [0 0.451 0.7412];
            app.MTrapecioCompuestoLabel.Position = [67 434 233 46];
            app.MTrapecioCompuestoLabel.Text = 'M. Trapecio Compuesto';

            % Create Button_img
            app.Button_img = uibutton(app.TrapecioCTab, 'push');
            app.Button_img.Icon = 'trapecio.png';
            app.Button_img.BackgroundColor = [1 1 1];
            app.Button_img.Enable = 'off';
            app.Button_img.Position = [31 293 269 142];
            app.Button_img.Text = '';

            % Create Simpson13CTab
            app.Simpson13CTab = uitab(app.TabGroup2);
            app.Simpson13CTab.Title = 'Simpson 1/3 C.';
            app.Simpson13CTab.BackgroundColor = [1 1 1];

            % Create sim_b
            app.sim_b = uibutton(app.Simpson13CTab, 'push');
            app.sim_b.ButtonPushedFcn = createCallbackFcn(app, @sim_bButtonPushed, true);
            app.sim_b.BackgroundColor = [0.9294 0.6902 0.1294];
            app.sim_b.FontColor = [1 1 1];
            app.sim_b.Enable = 'off';
            app.sim_b.Position = [200 159 100 38];
            app.sim_b.Text = 'Calcular';

            % Create NdePuntosLabel_4
            app.NdePuntosLabel_4 = uilabel(app.Simpson13CTab);
            app.NdePuntosLabel_4.HorizontalAlignment = 'right';
            app.NdePuntosLabel_4.FontSize = 16;
            app.NdePuntosLabel_4.FontColor = [0.9294 0.6902 0.1294];
            app.NdePuntosLabel_4.Position = [55 252 94 22];
            app.NdePuntosLabel_4.Text = 'N de Puntos';

            % Create sim_n
            app.sim_n = uieditfield(app.Simpson13CTab, 'numeric');
            app.sim_n.FontSize = 16;
            app.sim_n.Position = [164 252 99 22];
            app.sim_n.Value = 1;

            % Create ResultadoEditFieldLabel_5
            app.ResultadoEditFieldLabel_5 = uilabel(app.Simpson13CTab);
            app.ResultadoEditFieldLabel_5.HorizontalAlignment = 'right';
            app.ResultadoEditFieldLabel_5.FontSize = 16;
            app.ResultadoEditFieldLabel_5.FontColor = [0.9294 0.6902 0.1294];
            app.ResultadoEditFieldLabel_5.Position = [107 85 78 22];
            app.ResultadoEditFieldLabel_5.Text = 'Resultado';

            % Create sim_r
            app.sim_r = uieditfield(app.Simpson13CTab, 'text');
            app.sim_r.Editable = 'off';
            app.sim_r.Position = [200 85 100 22];
            app.sim_r.Value = '0';

            % Create Lamp_3
            app.Lamp_3 = uilamp(app.Simpson13CTab);
            app.Lamp_3.Position = [280 253 20 20];

            % Create MSimpson13CompuestoLabel
            app.MSimpson13CompuestoLabel = uilabel(app.Simpson13CTab);
            app.MSimpson13CompuestoLabel.HorizontalAlignment = 'center';
            app.MSimpson13CompuestoLabel.FontSize = 20;
            app.MSimpson13CompuestoLabel.FontWeight = 'bold';
            app.MSimpson13CompuestoLabel.FontColor = [0.9294 0.6902 0.1294];
            app.MSimpson13CompuestoLabel.Position = [30 434 270 46];
            app.MSimpson13CompuestoLabel.Text = 'M. Simpson 1/3 Compuesto';

            % Create Button_img_2
            app.Button_img_2 = uibutton(app.Simpson13CTab, 'push');
            app.Button_img_2.Icon = 'simp.jpg';
            app.Button_img_2.BackgroundColor = [1 1 1];
            app.Button_img_2.Enable = 'off';
            app.Button_img_2.Position = [31 293 269 142];
            app.Button_img_2.Text = '';

            % Create Simpson38CTab
            app.Simpson38CTab = uitab(app.TabGroup2);
            app.Simpson38CTab.Title = 'Simpson 3/8 C.';
            app.Simpson38CTab.BackgroundColor = [1 1 1];

            % Create simp_b
            app.simp_b = uibutton(app.Simpson38CTab, 'push');
            app.simp_b.ButtonPushedFcn = createCallbackFcn(app, @simp_bButtonPushed, true);
            app.simp_b.BackgroundColor = [0.851 0.3294 0.102];
            app.simp_b.FontColor = [1 1 1];
            app.simp_b.Enable = 'off';
            app.simp_b.Position = [199 159 100 38];
            app.simp_b.Text = 'Calcular';

            % Create NdeIntervalosLabel
            app.NdeIntervalosLabel = uilabel(app.Simpson38CTab);
            app.NdeIntervalosLabel.HorizontalAlignment = 'right';
            app.NdeIntervalosLabel.FontSize = 16;
            app.NdeIntervalosLabel.FontColor = [0.851 0.3294 0.102];
            app.NdeIntervalosLabel.Position = [42 252 113 22];
            app.NdeIntervalosLabel.Text = 'N de Intervalos';

            % Create simp_n
            app.simp_n = uieditfield(app.Simpson38CTab, 'numeric');
            app.simp_n.Position = [170 252 99 22];
            app.simp_n.Value = 3;

            % Create ResultadoEditFieldLabel_6
            app.ResultadoEditFieldLabel_6 = uilabel(app.Simpson38CTab);
            app.ResultadoEditFieldLabel_6.HorizontalAlignment = 'right';
            app.ResultadoEditFieldLabel_6.FontSize = 16;
            app.ResultadoEditFieldLabel_6.FontColor = [0.851 0.3294 0.102];
            app.ResultadoEditFieldLabel_6.Position = [106 85 78 22];
            app.ResultadoEditFieldLabel_6.Text = 'Resultado';

            % Create simp_r
            app.simp_r = uieditfield(app.Simpson38CTab, 'text');
            app.simp_r.Editable = 'off';
            app.simp_r.FontColor = [0.149 0.149 0.149];
            app.simp_r.Position = [199 85 100 22];
            app.simp_r.Value = '0';

            % Create Lamp
            app.Lamp = uilamp(app.Simpson38CTab);
            app.Lamp.Position = [280 253 20 20];

            % Create MSimpson38CompuestoLabel
            app.MSimpson38CompuestoLabel = uilabel(app.Simpson38CTab);
            app.MSimpson38CompuestoLabel.HorizontalAlignment = 'center';
            app.MSimpson38CompuestoLabel.FontSize = 20;
            app.MSimpson38CompuestoLabel.FontWeight = 'bold';
            app.MSimpson38CompuestoLabel.FontColor = [0.851 0.3294 0.102];
            app.MSimpson38CompuestoLabel.Position = [29 434 270 46];
            app.MSimpson38CompuestoLabel.Text = 'M. Simpson 3/8 Compuesto';

            % Create Button_img_3
            app.Button_img_3 = uibutton(app.Simpson38CTab, 'push');
            app.Button_img_3.Icon = 'simp.png';
            app.Button_img_3.BackgroundColor = [1 1 1];
            app.Button_img_3.Enable = 'off';
            app.Button_img_3.Position = [31 293 269 142];
            app.Button_img_3.Text = '';

            % Create RombergTab
            app.RombergTab = uitab(app.TabGroup2);
            app.RombergTab.Title = 'Romberg';
            app.RombergTab.BackgroundColor = [1 1 1];

            % Create romberg
            app.romberg = uibutton(app.RombergTab, 'push');
            app.romberg.ButtonPushedFcn = createCallbackFcn(app, @rombergButtonPushed, true);
            app.romberg.BackgroundColor = [0.302 0.749 0.9294];
            app.romberg.FontColor = [1 1 1];
            app.romberg.Enable = 'off';
            app.romberg.Position = [200 148 100 38];
            app.romberg.Text = 'Calcular';

            % Create NdeNivelesLabel
            app.NdeNivelesLabel = uilabel(app.RombergTab);
            app.NdeNivelesLabel.HorizontalAlignment = 'right';
            app.NdeNivelesLabel.FontSize = 16;
            app.NdeNivelesLabel.FontColor = [0.302 0.749 0.9294];
            app.NdeNivelesLabel.Position = [83 242 101 22];
            app.NdeNivelesLabel.Text = 'N de Niveles ';

            % Create value_n
            app.value_n = uieditfield(app.RombergTab, 'numeric');
            app.value_n.Position = [199 242 99 22];
            app.value_n.Value = 1;

            % Create ResultadoEditFieldLabel_7
            app.ResultadoEditFieldLabel_7 = uilabel(app.RombergTab);
            app.ResultadoEditFieldLabel_7.HorizontalAlignment = 'right';
            app.ResultadoEditFieldLabel_7.FontSize = 16;
            app.ResultadoEditFieldLabel_7.FontColor = [0.302 0.749 0.9294];
            app.ResultadoEditFieldLabel_7.Position = [105 71 78 22];
            app.ResultadoEditFieldLabel_7.Text = 'Resultado';

            % Create value_res
            app.value_res = uieditfield(app.RombergTab, 'text');
            app.value_res.Editable = 'off';
            app.value_res.Position = [198 71 100 22];
            app.value_res.Value = '0';

            % Create MRombergLabel
            app.MRombergLabel = uilabel(app.RombergTab);
            app.MRombergLabel.HorizontalAlignment = 'center';
            app.MRombergLabel.FontSize = 20;
            app.MRombergLabel.FontWeight = 'bold';
            app.MRombergLabel.FontColor = [0.302 0.749 0.9294];
            app.MRombergLabel.Position = [28 434 270 46];
            app.MRombergLabel.Text = 'M. Romberg';

            % Create Button_img_4
            app.Button_img_4 = uibutton(app.RombergTab, 'push');
            app.Button_img_4.Icon = 'romberg.png';
            app.Button_img_4.BackgroundColor = [1 1 1];
            app.Button_img_4.Enable = 'off';
            app.Button_img_4.Position = [31 293 269 142];
            app.Button_img_4.Text = '';

            % Create CGaussTab_2
            app.CGaussTab_2 = uitab(app.TabGroup2);
            app.CGaussTab_2.Title = 'C. Gauss ';
            app.CGaussTab_2.BackgroundColor = [1 1 1];

            % Create trap_b_2
            app.trap_b_2 = uibutton(app.CGaussTab_2, 'push');
            app.trap_b_2.ButtonPushedFcn = createCallbackFcn(app, @trap_b_2ButtonPushed, true);
            app.trap_b_2.BackgroundColor = [0 0.451 0.7412];
            app.trap_b_2.FontColor = [1 1 1];
            app.trap_b_2.Enable = 'off';
            app.trap_b_2.Position = [199 157 100 38];
            app.trap_b_2.Text = 'Calcular';

            % Create CuadraturaGaussLabel
            app.CuadraturaGaussLabel = uilabel(app.CGaussTab_2);
            app.CuadraturaGaussLabel.HorizontalAlignment = 'center';
            app.CuadraturaGaussLabel.FontSize = 20;
            app.CuadraturaGaussLabel.FontWeight = 'bold';
            app.CuadraturaGaussLabel.FontColor = [0 0.451 0.7412];
            app.CuadraturaGaussLabel.Position = [67 434 233 46];
            app.CuadraturaGaussLabel.Text = 'Cuadratura Gauss ';

            % Create Button_img_5
            app.Button_img_5 = uibutton(app.CGaussTab_2, 'push');
            app.Button_img_5.Icon = 'gauss.png';
            app.Button_img_5.BackgroundColor = [1 1 1];
            app.Button_img_5.Enable = 'off';
            app.Button_img_5.Position = [31 293 269 142];
            app.Button_img_5.Text = '';

            % Create NpuntosLabel
            app.NpuntosLabel = uilabel(app.CGaussTab_2);
            app.NpuntosLabel.HorizontalAlignment = 'right';
            app.NpuntosLabel.FontSize = 16;
            app.NpuntosLabel.FontColor = [0 0.451 0.7412];
            app.NpuntosLabel.Position = [106 252 78 22];
            app.NpuntosLabel.Text = 'N puntos: ';

            % Create trap_n_2
            app.trap_n_2 = uieditfield(app.CGaussTab_2, 'numeric');
            app.trap_n_2.FontSize = 16;
            app.trap_n_2.FontColor = [0.149 0.149 0.149];
            app.trap_n_2.Position = [199 252 99 22];
            app.trap_n_2.Value = 1;

            % Create ResultadoEditFieldLabel_8
            app.ResultadoEditFieldLabel_8 = uilabel(app.CGaussTab_2);
            app.ResultadoEditFieldLabel_8.HorizontalAlignment = 'right';
            app.ResultadoEditFieldLabel_8.FontSize = 16;
            app.ResultadoEditFieldLabel_8.FontColor = [0 0.451 0.7412];
            app.ResultadoEditFieldLabel_8.Position = [105 82 78 22];
            app.ResultadoEditFieldLabel_8.Text = 'Resultado';

            % Create trap_r_2
            app.trap_r_2 = uieditfield(app.CGaussTab_2, 'text');
            app.trap_r_2.Editable = 'off';
            app.trap_r_2.FontColor = [0.149 0.149 0.149];
            app.trap_r_2.Position = [198 82 100 22];
            app.trap_r_2.Value = '0';

            % Create axes
            app.axes = uiaxes(app.IntegracionTab_2);
            title(app.axes, 'Funcion')
            xlabel(app.axes, 'X')
            ylabel(app.axes, 'Y')
            app.axes.Box = 'on';
            app.axes.XGrid = 'on';
            app.axes.YGrid = 'on';
            app.axes.Position = [21 106 512 315];

            % Create FuncionfxLabel
            app.FuncionfxLabel = uilabel(app.IntegracionTab_2);
            app.FuncionfxLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.FuncionfxLabel.HorizontalAlignment = 'right';
            app.FuncionfxLabel.FontSize = 16;
            app.FuncionfxLabel.FontWeight = 'bold';
            app.FuncionfxLabel.FontColor = [0.4706 0.6706 0.1882];
            app.FuncionfxLabel.Position = [37 502 101 22];
            app.FuncionfxLabel.Text = 'Funcion f(x) ';

            % Create funcion
            app.funcion = uieditfield(app.IntegracionTab_2, 'text');
            app.funcion.FontSize = 16;
            app.funcion.FontColor = [0.4706 0.6706 0.1882];
            app.funcion.Position = [154 502 199 23];
            app.funcion.Value = 'x.^3-x.^2*2.5 +4';

            % Create ALabel
            app.ALabel = uilabel(app.IntegracionTab_2);
            app.ALabel.HorizontalAlignment = 'right';
            app.ALabel.FontSize = 16;
            app.ALabel.FontWeight = 'bold';
            app.ALabel.FontColor = [0.4706 0.6706 0.1882];
            app.ALabel.Position = [23 458 31 22];
            app.ALabel.Text = 'A : ';

            % Create valor_a
            app.valor_a = uieditfield(app.IntegracionTab_2, 'numeric');
            app.valor_a.FontSize = 16;
            app.valor_a.FontColor = [0.4706 0.6706 0.1882];
            app.valor_a.Position = [69 458 100 22];

            % Create BEditFieldLabel
            app.BEditFieldLabel = uilabel(app.IntegracionTab_2);
            app.BEditFieldLabel.HorizontalAlignment = 'right';
            app.BEditFieldLabel.FontSize = 16;
            app.BEditFieldLabel.FontWeight = 'bold';
            app.BEditFieldLabel.FontColor = [0.4706 0.6706 0.1882];
            app.BEditFieldLabel.Position = [207 458 31 22];
            app.BEditFieldLabel.Text = 'B : ';

            % Create valor_b
            app.valor_b = uieditfield(app.IntegracionTab_2, 'numeric');
            app.valor_b.FontSize = 16;
            app.valor_b.FontColor = [0.4706 0.6706 0.1882];
            app.valor_b.Position = [253 458 100 22];
            app.valor_b.Value = 3;

            % Create graficar_btn
            app.graficar_btn = uibutton(app.IntegracionTab_2, 'push');
            app.graficar_btn.ButtonPushedFcn = createCallbackFcn(app, @graficar_btnButtonPushed, true);
            app.graficar_btn.BackgroundColor = [0.4706 0.6706 0.1882];
            app.graficar_btn.FontColor = [1 1 1];
            app.graficar_btn.Position = [433 466 100 38];
            app.graficar_btn.Text = 'Graficar';

            % Create lampara
            app.lampara = uilamp(app.IntegracionTab_2);
            app.lampara.Position = [364 503 20 20];

            % Create DerivacionTab
            app.DerivacionTab = uitab(app.TabGroup);
            app.DerivacionTab.Title = 'Derivacion';
            app.DerivacionTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create DIFERENCIASFINITASLabel
            app.DIFERENCIASFINITASLabel = uilabel(app.DerivacionTab);
            app.DIFERENCIASFINITASLabel.FontSize = 18;
            app.DIFERENCIASFINITASLabel.FontColor = [0 0.451 0.7412];
            app.DIFERENCIASFINITASLabel.Position = [10 499 205 46];
            app.DIFERENCIASFINITASLabel.Text = 'DIFERENCIAS FINITAS ';

            % Create RegresivasPanel
            app.RegresivasPanel = uipanel(app.DerivacionTab);
            app.RegresivasPanel.ForegroundColor = [0 0.451 0.7412];
            app.RegresivasPanel.TitlePosition = 'centertop';
            app.RegresivasPanel.Title = 'Regresivas';
            app.RegresivasPanel.BackgroundColor = [1 1 1];
            app.RegresivasPanel.FontWeight = 'bold';
            app.RegresivasPanel.FontSize = 16;
            app.RegresivasPanel.Position = [1 1 306 437];

            % Create PrimeraDerivadaLabel
            app.PrimeraDerivadaLabel = uilabel(app.RegresivasPanel);
            app.PrimeraDerivadaLabel.FontSize = 14;
            app.PrimeraDerivadaLabel.FontWeight = 'bold';
            app.PrimeraDerivadaLabel.FontColor = [0.851 0.3294 0.102];
            app.PrimeraDerivadaLabel.Position = [9 363 121 24];
            app.PrimeraDerivadaLabel.Text = 'Primera Derivada';

            % Create OhButton
            app.OhButton = uibutton(app.RegresivasPanel, 'push');
            app.OhButton.ButtonPushedFcn = createCallbackFcn(app, @OhButtonPushed, true);
            app.OhButton.BackgroundColor = [0.851 0.3294 0.102];
            app.OhButton.FontSize = 16;
            app.OhButton.FontWeight = 'bold';
            app.OhButton.FontColor = [1 1 1];
            app.OhButton.Position = [12 306 100 36];
            app.OhButton.Text = 'O(h)';

            % Create Oh2Button
            app.Oh2Button = uibutton(app.RegresivasPanel, 'push');
            app.Oh2Button.ButtonPushedFcn = createCallbackFcn(app, @Oh2ButtonPushed, true);
            app.Oh2Button.BackgroundColor = [0.851 0.3294 0.102];
            app.Oh2Button.FontSize = 16;
            app.Oh2Button.FontWeight = 'bold';
            app.Oh2Button.FontColor = [1 1 1];
            app.Oh2Button.Position = [157 306 100 36];
            app.Oh2Button.Text = 'O(h^2)';

            % Create SegundaDerivadaLabel
            app.SegundaDerivadaLabel = uilabel(app.RegresivasPanel);
            app.SegundaDerivadaLabel.FontSize = 14;
            app.SegundaDerivadaLabel.FontWeight = 'bold';
            app.SegundaDerivadaLabel.FontColor = [0.851 0.3294 0.102];
            app.SegundaDerivadaLabel.Position = [12 258 128 24];
            app.SegundaDerivadaLabel.Text = 'Segunda Derivada';

            % Create OhButton_2
            app.OhButton_2 = uibutton(app.RegresivasPanel, 'push');
            app.OhButton_2.ButtonPushedFcn = createCallbackFcn(app, @OhButton_2Pushed, true);
            app.OhButton_2.BackgroundColor = [0.851 0.3294 0.102];
            app.OhButton_2.FontSize = 16;
            app.OhButton_2.FontWeight = 'bold';
            app.OhButton_2.FontColor = [1 1 1];
            app.OhButton_2.Position = [12 206 100 33];
            app.OhButton_2.Text = 'O(h)';

            % Create Oh2Button_2
            app.Oh2Button_2 = uibutton(app.RegresivasPanel, 'push');
            app.Oh2Button_2.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_2Pushed, true);
            app.Oh2Button_2.BackgroundColor = [0.851 0.3294 0.102];
            app.Oh2Button_2.FontSize = 16;
            app.Oh2Button_2.FontWeight = 'bold';
            app.Oh2Button_2.FontColor = [1 1 1];
            app.Oh2Button_2.Position = [157 206 100 33];
            app.Oh2Button_2.Text = 'O(h^2)';

            % Create OhButton_3
            app.OhButton_3 = uibutton(app.RegresivasPanel, 'push');
            app.OhButton_3.ButtonPushedFcn = createCallbackFcn(app, @OhButton_3Pushed, true);
            app.OhButton_3.BackgroundColor = [0.851 0.3294 0.102];
            app.OhButton_3.FontSize = 16;
            app.OhButton_3.FontWeight = 'bold';
            app.OhButton_3.FontColor = [1 1 1];
            app.OhButton_3.Position = [12 107 100 30];
            app.OhButton_3.Text = 'O(h)';

            % Create Oh2Button_3
            app.Oh2Button_3 = uibutton(app.RegresivasPanel, 'push');
            app.Oh2Button_3.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_3Pushed, true);
            app.Oh2Button_3.BackgroundColor = [0.851 0.3294 0.102];
            app.Oh2Button_3.FontSize = 16;
            app.Oh2Button_3.FontWeight = 'bold';
            app.Oh2Button_3.FontColor = [1 1 1];
            app.Oh2Button_3.Position = [157 107 100 30];
            app.Oh2Button_3.Text = 'O(h^2)';

            % Create TerceraDerivadaLabel
            app.TerceraDerivadaLabel = uilabel(app.RegresivasPanel);
            app.TerceraDerivadaLabel.FontSize = 14;
            app.TerceraDerivadaLabel.FontWeight = 'bold';
            app.TerceraDerivadaLabel.FontColor = [0.851 0.3294 0.102];
            app.TerceraDerivadaLabel.Position = [9 156 118 24];
            app.TerceraDerivadaLabel.Text = 'Tercera Derivada';

            % Create FxEditFieldLabel
            app.FxEditFieldLabel = uilabel(app.RegresivasPanel);
            app.FxEditFieldLabel.HorizontalAlignment = 'right';
            app.FxEditFieldLabel.FontSize = 16;
            app.FxEditFieldLabel.FontWeight = 'bold';
            app.FxEditFieldLabel.FontColor = [0 0.451 0.7412];
            app.FxEditFieldLabel.Position = [32 55 58 22];
            app.FxEditFieldLabel.Text = 'F´(x) = ';

            % Create aproximacion
            app.aproximacion = uieditfield(app.RegresivasPanel, 'text');
            app.aproximacion.Position = [105 55 100 22];

            % Create CentradasPanel
            app.CentradasPanel = uipanel(app.DerivacionTab);
            app.CentradasPanel.ForegroundColor = [0 0.451 0.7412];
            app.CentradasPanel.TitlePosition = 'centertop';
            app.CentradasPanel.Title = 'Centradas';
            app.CentradasPanel.BackgroundColor = [1 1 1];
            app.CentradasPanel.FontWeight = 'bold';
            app.CentradasPanel.FontSize = 16;
            app.CentradasPanel.Position = [308 1 306 437];

            % Create PrimeraDerivadaLabel_2
            app.PrimeraDerivadaLabel_2 = uilabel(app.CentradasPanel);
            app.PrimeraDerivadaLabel_2.FontSize = 14;
            app.PrimeraDerivadaLabel_2.FontWeight = 'bold';
            app.PrimeraDerivadaLabel_2.FontColor = [0.9294 0.6902 0.1294];
            app.PrimeraDerivadaLabel_2.Position = [19 361 121 24];
            app.PrimeraDerivadaLabel_2.Text = 'Primera Derivada';

            % Create Oh2Button_10
            app.Oh2Button_10 = uibutton(app.CentradasPanel, 'push');
            app.Oh2Button_10.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_10Pushed, true);
            app.Oh2Button_10.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh2Button_10.FontSize = 16;
            app.Oh2Button_10.FontWeight = 'bold';
            app.Oh2Button_10.FontColor = [1 1 1];
            app.Oh2Button_10.Position = [22 304 100 36];
            app.Oh2Button_10.Text = 'O(h^2)';

            % Create Oh4Button
            app.Oh4Button = uibutton(app.CentradasPanel, 'push');
            app.Oh4Button.ButtonPushedFcn = createCallbackFcn(app, @Oh4ButtonPushed, true);
            app.Oh4Button.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh4Button.FontSize = 16;
            app.Oh4Button.FontWeight = 'bold';
            app.Oh4Button.FontColor = [1 1 1];
            app.Oh4Button.Position = [167 304 100 36];
            app.Oh4Button.Text = 'O(h^4)';

            % Create SegundaDerivadaLabel_2
            app.SegundaDerivadaLabel_2 = uilabel(app.CentradasPanel);
            app.SegundaDerivadaLabel_2.FontSize = 14;
            app.SegundaDerivadaLabel_2.FontWeight = 'bold';
            app.SegundaDerivadaLabel_2.FontColor = [0.9294 0.6902 0.1294];
            app.SegundaDerivadaLabel_2.Position = [22 256 128 24];
            app.SegundaDerivadaLabel_2.Text = 'Segunda Derivada';

            % Create Oh2Button_11
            app.Oh2Button_11 = uibutton(app.CentradasPanel, 'push');
            app.Oh2Button_11.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_11Pushed, true);
            app.Oh2Button_11.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh2Button_11.FontSize = 16;
            app.Oh2Button_11.FontWeight = 'bold';
            app.Oh2Button_11.FontColor = [1 1 1];
            app.Oh2Button_11.Position = [22 204 100 33];
            app.Oh2Button_11.Text = 'O(h^2)';

            % Create Oh4Button_2
            app.Oh4Button_2 = uibutton(app.CentradasPanel, 'push');
            app.Oh4Button_2.ButtonPushedFcn = createCallbackFcn(app, @Oh4Button_2Pushed, true);
            app.Oh4Button_2.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh4Button_2.FontSize = 16;
            app.Oh4Button_2.FontWeight = 'bold';
            app.Oh4Button_2.FontColor = [1 1 1];
            app.Oh4Button_2.Position = [167 204 100 33];
            app.Oh4Button_2.Text = 'O(h^4)';

            % Create TerceraDerivadaLabel_2
            app.TerceraDerivadaLabel_2 = uilabel(app.CentradasPanel);
            app.TerceraDerivadaLabel_2.FontSize = 14;
            app.TerceraDerivadaLabel_2.FontWeight = 'bold';
            app.TerceraDerivadaLabel_2.FontColor = [0.9294 0.6902 0.1294];
            app.TerceraDerivadaLabel_2.Position = [19 154 118 24];
            app.TerceraDerivadaLabel_2.Text = 'Tercera Derivada';

            % Create Oh2Button_12
            app.Oh2Button_12 = uibutton(app.CentradasPanel, 'push');
            app.Oh2Button_12.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_12Pushed, true);
            app.Oh2Button_12.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh2Button_12.FontSize = 16;
            app.Oh2Button_12.FontWeight = 'bold';
            app.Oh2Button_12.FontColor = [1 1 1];
            app.Oh2Button_12.Position = [22 105 100 30];
            app.Oh2Button_12.Text = 'O(h^2)';

            % Create Oh4Button_3
            app.Oh4Button_3 = uibutton(app.CentradasPanel, 'push');
            app.Oh4Button_3.ButtonPushedFcn = createCallbackFcn(app, @Oh4Button_3Pushed, true);
            app.Oh4Button_3.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh4Button_3.FontSize = 16;
            app.Oh4Button_3.FontWeight = 'bold';
            app.Oh4Button_3.FontColor = [1 1 1];
            app.Oh4Button_3.Position = [167 105 100 30];
            app.Oh4Button_3.Text = 'O(h^4)';

            % Create FxEditField_2Label
            app.FxEditField_2Label = uilabel(app.CentradasPanel);
            app.FxEditField_2Label.HorizontalAlignment = 'right';
            app.FxEditField_2Label.FontSize = 16;
            app.FxEditField_2Label.FontWeight = 'bold';
            app.FxEditField_2Label.FontColor = [0 0.451 0.7412];
            app.FxEditField_2Label.Position = [42 53 58 22];
            app.FxEditField_2Label.Text = 'F´(x) = ';

            % Create FxEditField_2
            app.FxEditField_2 = uieditfield(app.CentradasPanel, 'text');
            app.FxEditField_2.Position = [115 53 100 22];

            % Create ProgresivasPanel
            app.ProgresivasPanel = uipanel(app.DerivacionTab);
            app.ProgresivasPanel.ForegroundColor = [0 0.451 0.7412];
            app.ProgresivasPanel.TitlePosition = 'centertop';
            app.ProgresivasPanel.Title = 'Progresivas';
            app.ProgresivasPanel.BackgroundColor = [1 1 1];
            app.ProgresivasPanel.FontWeight = 'bold';
            app.ProgresivasPanel.FontSize = 16;
            app.ProgresivasPanel.Position = [615 1 306 437];

            % Create PrimeraDerivadaLabel_3
            app.PrimeraDerivadaLabel_3 = uilabel(app.ProgresivasPanel);
            app.PrimeraDerivadaLabel_3.FontSize = 14;
            app.PrimeraDerivadaLabel_3.FontWeight = 'bold';
            app.PrimeraDerivadaLabel_3.FontColor = [0.4706 0.6706 0.1882];
            app.PrimeraDerivadaLabel_3.Position = [24 359 121 24];
            app.PrimeraDerivadaLabel_3.Text = 'Primera Derivada';

            % Create OhButton_7
            app.OhButton_7 = uibutton(app.ProgresivasPanel, 'push');
            app.OhButton_7.ButtonPushedFcn = createCallbackFcn(app, @OhButton_7Pushed, true);
            app.OhButton_7.BackgroundColor = [0.4706 0.6706 0.1882];
            app.OhButton_7.FontSize = 16;
            app.OhButton_7.FontWeight = 'bold';
            app.OhButton_7.FontColor = [1 1 1];
            app.OhButton_7.Position = [27 302 100 36];
            app.OhButton_7.Text = 'O(h)';

            % Create Oh2Button_7
            app.Oh2Button_7 = uibutton(app.ProgresivasPanel, 'push');
            app.Oh2Button_7.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_7Pushed, true);
            app.Oh2Button_7.BackgroundColor = [0.4706 0.6706 0.1882];
            app.Oh2Button_7.FontSize = 16;
            app.Oh2Button_7.FontWeight = 'bold';
            app.Oh2Button_7.FontColor = [1 1 1];
            app.Oh2Button_7.Position = [172 302 100 36];
            app.Oh2Button_7.Text = 'O(h^2)';

            % Create SegundaDerivadaLabel_3
            app.SegundaDerivadaLabel_3 = uilabel(app.ProgresivasPanel);
            app.SegundaDerivadaLabel_3.FontSize = 14;
            app.SegundaDerivadaLabel_3.FontWeight = 'bold';
            app.SegundaDerivadaLabel_3.FontColor = [0.4706 0.6706 0.1882];
            app.SegundaDerivadaLabel_3.Position = [27 254 128 24];
            app.SegundaDerivadaLabel_3.Text = 'Segunda Derivada';

            % Create OhButton_8
            app.OhButton_8 = uibutton(app.ProgresivasPanel, 'push');
            app.OhButton_8.ButtonPushedFcn = createCallbackFcn(app, @OhButton_8Pushed, true);
            app.OhButton_8.BackgroundColor = [0.4706 0.6706 0.1882];
            app.OhButton_8.FontSize = 16;
            app.OhButton_8.FontWeight = 'bold';
            app.OhButton_8.FontColor = [1 1 1];
            app.OhButton_8.Position = [27 202 100 33];
            app.OhButton_8.Text = 'O(h)';

            % Create Oh2Button_8
            app.Oh2Button_8 = uibutton(app.ProgresivasPanel, 'push');
            app.Oh2Button_8.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_8Pushed, true);
            app.Oh2Button_8.BackgroundColor = [0.4706 0.6706 0.1882];
            app.Oh2Button_8.FontSize = 16;
            app.Oh2Button_8.FontWeight = 'bold';
            app.Oh2Button_8.FontColor = [1 1 1];
            app.Oh2Button_8.Position = [172 202 100 33];
            app.Oh2Button_8.Text = 'O(h^2)';

            % Create TerceraDerivadaLabel_3
            app.TerceraDerivadaLabel_3 = uilabel(app.ProgresivasPanel);
            app.TerceraDerivadaLabel_3.FontSize = 14;
            app.TerceraDerivadaLabel_3.FontWeight = 'bold';
            app.TerceraDerivadaLabel_3.FontColor = [0.4706 0.6706 0.1882];
            app.TerceraDerivadaLabel_3.Position = [24 152 118 24];
            app.TerceraDerivadaLabel_3.Text = 'Tercera Derivada';

            % Create OhButton_9
            app.OhButton_9 = uibutton(app.ProgresivasPanel, 'push');
            app.OhButton_9.ButtonPushedFcn = createCallbackFcn(app, @OhButton_9Pushed, true);
            app.OhButton_9.BackgroundColor = [0.4706 0.6706 0.1882];
            app.OhButton_9.FontSize = 16;
            app.OhButton_9.FontWeight = 'bold';
            app.OhButton_9.FontColor = [1 1 1];
            app.OhButton_9.Position = [27 103 100 30];
            app.OhButton_9.Text = 'O(h)';

            % Create Oh2Button_9
            app.Oh2Button_9 = uibutton(app.ProgresivasPanel, 'push');
            app.Oh2Button_9.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_9Pushed, true);
            app.Oh2Button_9.BackgroundColor = [0.4706 0.6706 0.1882];
            app.Oh2Button_9.FontSize = 16;
            app.Oh2Button_9.FontWeight = 'bold';
            app.Oh2Button_9.FontColor = [1 1 1];
            app.Oh2Button_9.Position = [172 103 100 30];
            app.Oh2Button_9.Text = 'O(h^2)';

            % Create FxEditField_3Label
            app.FxEditField_3Label = uilabel(app.ProgresivasPanel);
            app.FxEditField_3Label.HorizontalAlignment = 'right';
            app.FxEditField_3Label.FontSize = 16;
            app.FxEditField_3Label.FontWeight = 'bold';
            app.FxEditField_3Label.FontColor = [0 0.451 0.7412];
            app.FxEditField_3Label.Position = [47 51 58 22];
            app.FxEditField_3Label.Text = 'F´(x) = ';

            % Create FxEditField_3
            app.FxEditField_3 = uieditfield(app.ProgresivasPanel, 'text');
            app.FxEditField_3.Position = [120 51 100 22];

            % Create FuncionfxEditFieldLabel
            app.FuncionfxEditFieldLabel = uilabel(app.DerivacionTab);
            app.FuncionfxEditFieldLabel.HorizontalAlignment = 'right';
            app.FuncionfxEditFieldLabel.FontSize = 16;
            app.FuncionfxEditFieldLabel.FontColor = [0 0.451 0.7412];
            app.FuncionfxEditFieldLabel.Position = [13 470 94 22];
            app.FuncionfxEditFieldLabel.Text = 'Funcion f(x) ';

            % Create derivacion
            app.derivacion = uieditfield(app.DerivacionTab, 'text');
            app.derivacion.FontSize = 16;
            app.derivacion.FontColor = [0 0.451 0.7412];
            app.derivacion.Position = [122 469 372 23];
            app.derivacion.Value = '-0.1*x.^4 -0.15*x.^3 -0.5*x.^2 -0.25*x + 1.2';

            % Create XEditFieldLabel
            app.XEditFieldLabel = uilabel(app.DerivacionTab);
            app.XEditFieldLabel.HorizontalAlignment = 'right';
            app.XEditFieldLabel.FontSize = 16;
            app.XEditFieldLabel.FontColor = [0 0.451 0.7412];
            app.XEditFieldLabel.Position = [575 500 30 22];
            app.XEditFieldLabel.Text = 'X =';

            % Create derivado
            app.derivado = uieditfield(app.DerivacionTab, 'numeric');
            app.derivado.FontSize = 16;
            app.derivado.FontColor = [0 0.451 0.7412];
            app.derivado.Position = [620 500 100 22];
            app.derivado.Value = 0.5;

            % Create HEditFieldLabel
            app.HEditFieldLabel = uilabel(app.DerivacionTab);
            app.HEditFieldLabel.HorizontalAlignment = 'right';
            app.HEditFieldLabel.FontSize = 16;
            app.HEditFieldLabel.FontColor = [0 0.451 0.7412];
            app.HEditFieldLabel.Position = [574 461 31 22];
            app.HEditFieldLabel.Text = 'H =';

            % Create paso
            app.paso = uieditfield(app.DerivacionTab, 'numeric');
            app.paso.FontSize = 16;
            app.paso.FontColor = [0 0.451 0.7412];
            app.paso.Position = [620 461 100 22];
            app.paso.Value = 0.25;

            % Create DerivacionIITab
            app.DerivacionIITab = uitab(app.TabGroup);
            app.DerivacionIITab.Title = 'Derivacion II';
            app.DerivacionIITab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create RegresivasPanel_2
            app.RegresivasPanel_2 = uipanel(app.DerivacionIITab);
            app.RegresivasPanel_2.ForegroundColor = [0 0.451 0.7412];
            app.RegresivasPanel_2.TitlePosition = 'centertop';
            app.RegresivasPanel_2.Title = 'Regresivas';
            app.RegresivasPanel_2.BackgroundColor = [1 1 1];
            app.RegresivasPanel_2.FontWeight = 'bold';
            app.RegresivasPanel_2.FontSize = 16;
            app.RegresivasPanel_2.Position = [1 1 306 437];

            % Create PrimeraDerivadaLabel_4
            app.PrimeraDerivadaLabel_4 = uilabel(app.RegresivasPanel_2);
            app.PrimeraDerivadaLabel_4.FontSize = 14;
            app.PrimeraDerivadaLabel_4.FontWeight = 'bold';
            app.PrimeraDerivadaLabel_4.FontColor = [0.851 0.3294 0.102];
            app.PrimeraDerivadaLabel_4.Position = [9 363 121 24];
            app.PrimeraDerivadaLabel_4.Text = 'Primera Derivada';

            % Create OhButton_10
            app.OhButton_10 = uibutton(app.RegresivasPanel_2, 'push');
            app.OhButton_10.ButtonPushedFcn = createCallbackFcn(app, @OhButton_10Pushed, true);
            app.OhButton_10.BackgroundColor = [0.851 0.3294 0.102];
            app.OhButton_10.FontSize = 16;
            app.OhButton_10.FontWeight = 'bold';
            app.OhButton_10.FontColor = [1 1 1];
            app.OhButton_10.Position = [12 306 100 36];
            app.OhButton_10.Text = 'O(h)';

            % Create Oh2Button_13
            app.Oh2Button_13 = uibutton(app.RegresivasPanel_2, 'push');
            app.Oh2Button_13.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_13Pushed, true);
            app.Oh2Button_13.BackgroundColor = [0.851 0.3294 0.102];
            app.Oh2Button_13.FontSize = 16;
            app.Oh2Button_13.FontWeight = 'bold';
            app.Oh2Button_13.FontColor = [1 1 1];
            app.Oh2Button_13.Position = [157 306 100 36];
            app.Oh2Button_13.Text = 'O(h^2)';

            % Create SegundaDerivadaLabel_4
            app.SegundaDerivadaLabel_4 = uilabel(app.RegresivasPanel_2);
            app.SegundaDerivadaLabel_4.FontSize = 14;
            app.SegundaDerivadaLabel_4.FontWeight = 'bold';
            app.SegundaDerivadaLabel_4.FontColor = [0.851 0.3294 0.102];
            app.SegundaDerivadaLabel_4.Position = [12 258 128 24];
            app.SegundaDerivadaLabel_4.Text = 'Segunda Derivada';

            % Create OhButton_11
            app.OhButton_11 = uibutton(app.RegresivasPanel_2, 'push');
            app.OhButton_11.ButtonPushedFcn = createCallbackFcn(app, @OhButton_11Pushed, true);
            app.OhButton_11.BackgroundColor = [0.851 0.3294 0.102];
            app.OhButton_11.FontSize = 16;
            app.OhButton_11.FontWeight = 'bold';
            app.OhButton_11.FontColor = [1 1 1];
            app.OhButton_11.Position = [12 206 100 33];
            app.OhButton_11.Text = 'O(h)';

            % Create Oh2Button_14
            app.Oh2Button_14 = uibutton(app.RegresivasPanel_2, 'push');
            app.Oh2Button_14.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_14Pushed, true);
            app.Oh2Button_14.BackgroundColor = [0.851 0.3294 0.102];
            app.Oh2Button_14.FontSize = 16;
            app.Oh2Button_14.FontWeight = 'bold';
            app.Oh2Button_14.FontColor = [1 1 1];
            app.Oh2Button_14.Position = [157 206 100 33];
            app.Oh2Button_14.Text = 'O(h^2)';

            % Create OhButton_12
            app.OhButton_12 = uibutton(app.RegresivasPanel_2, 'push');
            app.OhButton_12.ButtonPushedFcn = createCallbackFcn(app, @OhButton_12Pushed, true);
            app.OhButton_12.BackgroundColor = [0.851 0.3294 0.102];
            app.OhButton_12.FontSize = 16;
            app.OhButton_12.FontWeight = 'bold';
            app.OhButton_12.FontColor = [1 1 1];
            app.OhButton_12.Position = [12 107 100 30];
            app.OhButton_12.Text = 'O(h)';

            % Create Oh2Button_15
            app.Oh2Button_15 = uibutton(app.RegresivasPanel_2, 'push');
            app.Oh2Button_15.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_15Pushed, true);
            app.Oh2Button_15.BackgroundColor = [0.851 0.3294 0.102];
            app.Oh2Button_15.FontSize = 16;
            app.Oh2Button_15.FontWeight = 'bold';
            app.Oh2Button_15.FontColor = [1 1 1];
            app.Oh2Button_15.Position = [157 107 100 30];
            app.Oh2Button_15.Text = 'O(h^2)';

            % Create TerceraDerivadaLabel_4
            app.TerceraDerivadaLabel_4 = uilabel(app.RegresivasPanel_2);
            app.TerceraDerivadaLabel_4.FontSize = 14;
            app.TerceraDerivadaLabel_4.FontWeight = 'bold';
            app.TerceraDerivadaLabel_4.FontColor = [0.851 0.3294 0.102];
            app.TerceraDerivadaLabel_4.Position = [9 156 118 24];
            app.TerceraDerivadaLabel_4.Text = 'Tercera Derivada';

            % Create FxEditFieldLabel_2
            app.FxEditFieldLabel_2 = uilabel(app.RegresivasPanel_2);
            app.FxEditFieldLabel_2.HorizontalAlignment = 'right';
            app.FxEditFieldLabel_2.FontSize = 16;
            app.FxEditFieldLabel_2.FontWeight = 'bold';
            app.FxEditFieldLabel_2.FontColor = [0 0.451 0.7412];
            app.FxEditFieldLabel_2.Position = [32 55 58 22];
            app.FxEditFieldLabel_2.Text = 'F´(x) = ';

            % Create aproximacion_2
            app.aproximacion_2 = uieditfield(app.RegresivasPanel_2, 'text');
            app.aproximacion_2.Position = [105 55 100 22];

            % Create CentradasPanel_2
            app.CentradasPanel_2 = uipanel(app.DerivacionIITab);
            app.CentradasPanel_2.ForegroundColor = [0 0.451 0.7412];
            app.CentradasPanel_2.TitlePosition = 'centertop';
            app.CentradasPanel_2.Title = 'Centradas';
            app.CentradasPanel_2.BackgroundColor = [1 1 1];
            app.CentradasPanel_2.FontWeight = 'bold';
            app.CentradasPanel_2.FontSize = 16;
            app.CentradasPanel_2.Position = [308 1 306 437];

            % Create PrimeraDerivadaLabel_5
            app.PrimeraDerivadaLabel_5 = uilabel(app.CentradasPanel_2);
            app.PrimeraDerivadaLabel_5.FontSize = 14;
            app.PrimeraDerivadaLabel_5.FontWeight = 'bold';
            app.PrimeraDerivadaLabel_5.FontColor = [0.9294 0.6902 0.1294];
            app.PrimeraDerivadaLabel_5.Position = [19 361 121 24];
            app.PrimeraDerivadaLabel_5.Text = 'Primera Derivada';

            % Create Oh2Button_16
            app.Oh2Button_16 = uibutton(app.CentradasPanel_2, 'push');
            app.Oh2Button_16.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_16Pushed, true);
            app.Oh2Button_16.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh2Button_16.FontSize = 16;
            app.Oh2Button_16.FontWeight = 'bold';
            app.Oh2Button_16.FontColor = [1 1 1];
            app.Oh2Button_16.Position = [22 304 100 36];
            app.Oh2Button_16.Text = 'O(h^2)';

            % Create Oh4Button_4
            app.Oh4Button_4 = uibutton(app.CentradasPanel_2, 'push');
            app.Oh4Button_4.ButtonPushedFcn = createCallbackFcn(app, @Oh4Button_4Pushed, true);
            app.Oh4Button_4.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh4Button_4.FontSize = 16;
            app.Oh4Button_4.FontWeight = 'bold';
            app.Oh4Button_4.FontColor = [1 1 1];
            app.Oh4Button_4.Position = [167 304 100 36];
            app.Oh4Button_4.Text = 'O(h^4)';

            % Create SegundaDerivadaLabel_5
            app.SegundaDerivadaLabel_5 = uilabel(app.CentradasPanel_2);
            app.SegundaDerivadaLabel_5.FontSize = 14;
            app.SegundaDerivadaLabel_5.FontWeight = 'bold';
            app.SegundaDerivadaLabel_5.FontColor = [0.9294 0.6902 0.1294];
            app.SegundaDerivadaLabel_5.Position = [22 256 128 24];
            app.SegundaDerivadaLabel_5.Text = 'Segunda Derivada';

            % Create Oh2Button_17
            app.Oh2Button_17 = uibutton(app.CentradasPanel_2, 'push');
            app.Oh2Button_17.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_17Pushed, true);
            app.Oh2Button_17.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh2Button_17.FontSize = 16;
            app.Oh2Button_17.FontWeight = 'bold';
            app.Oh2Button_17.FontColor = [1 1 1];
            app.Oh2Button_17.Position = [22 204 100 33];
            app.Oh2Button_17.Text = 'O(h^2)';

            % Create Oh4Button_5
            app.Oh4Button_5 = uibutton(app.CentradasPanel_2, 'push');
            app.Oh4Button_5.ButtonPushedFcn = createCallbackFcn(app, @Oh4Button_5Pushed, true);
            app.Oh4Button_5.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh4Button_5.FontSize = 16;
            app.Oh4Button_5.FontWeight = 'bold';
            app.Oh4Button_5.FontColor = [1 1 1];
            app.Oh4Button_5.Position = [167 204 100 33];
            app.Oh4Button_5.Text = 'O(h^4)';

            % Create TerceraDerivadaLabel_5
            app.TerceraDerivadaLabel_5 = uilabel(app.CentradasPanel_2);
            app.TerceraDerivadaLabel_5.FontSize = 14;
            app.TerceraDerivadaLabel_5.FontWeight = 'bold';
            app.TerceraDerivadaLabel_5.FontColor = [0.9294 0.6902 0.1294];
            app.TerceraDerivadaLabel_5.Position = [19 154 118 24];
            app.TerceraDerivadaLabel_5.Text = 'Tercera Derivada';

            % Create Oh2Button_18
            app.Oh2Button_18 = uibutton(app.CentradasPanel_2, 'push');
            app.Oh2Button_18.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_18Pushed, true);
            app.Oh2Button_18.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh2Button_18.FontSize = 16;
            app.Oh2Button_18.FontWeight = 'bold';
            app.Oh2Button_18.FontColor = [1 1 1];
            app.Oh2Button_18.Position = [22 105 100 30];
            app.Oh2Button_18.Text = 'O(h^2)';

            % Create Oh4Button_6
            app.Oh4Button_6 = uibutton(app.CentradasPanel_2, 'push');
            app.Oh4Button_6.ButtonPushedFcn = createCallbackFcn(app, @Oh4Button_6Pushed, true);
            app.Oh4Button_6.BackgroundColor = [0.9294 0.6902 0.1294];
            app.Oh4Button_6.FontSize = 16;
            app.Oh4Button_6.FontWeight = 'bold';
            app.Oh4Button_6.FontColor = [1 1 1];
            app.Oh4Button_6.Position = [167 105 100 30];
            app.Oh4Button_6.Text = 'O(h^4)';

            % Create FxEditField_4Label
            app.FxEditField_4Label = uilabel(app.CentradasPanel_2);
            app.FxEditField_4Label.HorizontalAlignment = 'right';
            app.FxEditField_4Label.FontSize = 16;
            app.FxEditField_4Label.FontWeight = 'bold';
            app.FxEditField_4Label.FontColor = [0 0.451 0.7412];
            app.FxEditField_4Label.Position = [42 53 58 22];
            app.FxEditField_4Label.Text = 'F´(x) = ';

            % Create FxEditField_4
            app.FxEditField_4 = uieditfield(app.CentradasPanel_2, 'text');
            app.FxEditField_4.Position = [115 53 100 22];

            % Create ProgresivasPanel_2
            app.ProgresivasPanel_2 = uipanel(app.DerivacionIITab);
            app.ProgresivasPanel_2.ForegroundColor = [0 0.451 0.7412];
            app.ProgresivasPanel_2.TitlePosition = 'centertop';
            app.ProgresivasPanel_2.Title = 'Progresivas';
            app.ProgresivasPanel_2.BackgroundColor = [1 1 1];
            app.ProgresivasPanel_2.FontWeight = 'bold';
            app.ProgresivasPanel_2.FontSize = 16;
            app.ProgresivasPanel_2.Position = [615 1 306 437];

            % Create PrimeraDerivadaLabel_6
            app.PrimeraDerivadaLabel_6 = uilabel(app.ProgresivasPanel_2);
            app.PrimeraDerivadaLabel_6.FontSize = 14;
            app.PrimeraDerivadaLabel_6.FontWeight = 'bold';
            app.PrimeraDerivadaLabel_6.FontColor = [0.4706 0.6706 0.1882];
            app.PrimeraDerivadaLabel_6.Position = [24 359 121 24];
            app.PrimeraDerivadaLabel_6.Text = 'Primera Derivada';

            % Create OhButton_13
            app.OhButton_13 = uibutton(app.ProgresivasPanel_2, 'push');
            app.OhButton_13.ButtonPushedFcn = createCallbackFcn(app, @OhButton_13Pushed, true);
            app.OhButton_13.BackgroundColor = [0.4706 0.6706 0.1882];
            app.OhButton_13.FontSize = 16;
            app.OhButton_13.FontWeight = 'bold';
            app.OhButton_13.FontColor = [1 1 1];
            app.OhButton_13.Position = [27 302 100 36];
            app.OhButton_13.Text = 'O(h)';

            % Create Oh2Button_19
            app.Oh2Button_19 = uibutton(app.ProgresivasPanel_2, 'push');
            app.Oh2Button_19.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_19Pushed, true);
            app.Oh2Button_19.BackgroundColor = [0.4706 0.6706 0.1882];
            app.Oh2Button_19.FontSize = 16;
            app.Oh2Button_19.FontWeight = 'bold';
            app.Oh2Button_19.FontColor = [1 1 1];
            app.Oh2Button_19.Position = [172 302 100 36];
            app.Oh2Button_19.Text = 'O(h^2)';

            % Create SegundaDerivadaLabel_6
            app.SegundaDerivadaLabel_6 = uilabel(app.ProgresivasPanel_2);
            app.SegundaDerivadaLabel_6.FontSize = 14;
            app.SegundaDerivadaLabel_6.FontWeight = 'bold';
            app.SegundaDerivadaLabel_6.FontColor = [0.4706 0.6706 0.1882];
            app.SegundaDerivadaLabel_6.Position = [27 254 128 24];
            app.SegundaDerivadaLabel_6.Text = 'Segunda Derivada';

            % Create OhButton_14
            app.OhButton_14 = uibutton(app.ProgresivasPanel_2, 'push');
            app.OhButton_14.ButtonPushedFcn = createCallbackFcn(app, @OhButton_14Pushed, true);
            app.OhButton_14.BackgroundColor = [0.4706 0.6706 0.1882];
            app.OhButton_14.FontSize = 16;
            app.OhButton_14.FontWeight = 'bold';
            app.OhButton_14.FontColor = [1 1 1];
            app.OhButton_14.Position = [27 202 100 33];
            app.OhButton_14.Text = 'O(h)';

            % Create Oh2Button_20
            app.Oh2Button_20 = uibutton(app.ProgresivasPanel_2, 'push');
            app.Oh2Button_20.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_20Pushed, true);
            app.Oh2Button_20.BackgroundColor = [0.4706 0.6706 0.1882];
            app.Oh2Button_20.FontSize = 16;
            app.Oh2Button_20.FontWeight = 'bold';
            app.Oh2Button_20.FontColor = [1 1 1];
            app.Oh2Button_20.Position = [172 202 100 33];
            app.Oh2Button_20.Text = 'O(h^2)';

            % Create TerceraDerivadaLabel_6
            app.TerceraDerivadaLabel_6 = uilabel(app.ProgresivasPanel_2);
            app.TerceraDerivadaLabel_6.FontSize = 14;
            app.TerceraDerivadaLabel_6.FontWeight = 'bold';
            app.TerceraDerivadaLabel_6.FontColor = [0.4706 0.6706 0.1882];
            app.TerceraDerivadaLabel_6.Position = [24 152 118 24];
            app.TerceraDerivadaLabel_6.Text = 'Tercera Derivada';

            % Create OhButton_15
            app.OhButton_15 = uibutton(app.ProgresivasPanel_2, 'push');
            app.OhButton_15.ButtonPushedFcn = createCallbackFcn(app, @OhButton_15Pushed, true);
            app.OhButton_15.BackgroundColor = [0.4706 0.6706 0.1882];
            app.OhButton_15.FontSize = 16;
            app.OhButton_15.FontWeight = 'bold';
            app.OhButton_15.FontColor = [1 1 1];
            app.OhButton_15.Position = [27 103 100 30];
            app.OhButton_15.Text = 'O(h)';

            % Create Oh2Button_21
            app.Oh2Button_21 = uibutton(app.ProgresivasPanel_2, 'push');
            app.Oh2Button_21.ButtonPushedFcn = createCallbackFcn(app, @Oh2Button_21Pushed, true);
            app.Oh2Button_21.BackgroundColor = [0.4706 0.6706 0.1882];
            app.Oh2Button_21.FontSize = 16;
            app.Oh2Button_21.FontWeight = 'bold';
            app.Oh2Button_21.FontColor = [1 1 1];
            app.Oh2Button_21.Position = [172 103 100 30];
            app.Oh2Button_21.Text = 'O(h^2)';

            % Create FxEditField_5Label
            app.FxEditField_5Label = uilabel(app.ProgresivasPanel_2);
            app.FxEditField_5Label.HorizontalAlignment = 'right';
            app.FxEditField_5Label.FontSize = 16;
            app.FxEditField_5Label.FontWeight = 'bold';
            app.FxEditField_5Label.FontColor = [0 0.451 0.7412];
            app.FxEditField_5Label.Position = [47 51 58 22];
            app.FxEditField_5Label.Text = 'F´(x) = ';

            % Create FxEditField_5
            app.FxEditField_5 = uieditfield(app.ProgresivasPanel_2, 'text');
            app.FxEditField_5.Position = [120 51 100 22];

            % Create IngresesuarchivoButton
            app.IngresesuarchivoButton = uibutton(app.DerivacionIITab, 'push');
            app.IngresesuarchivoButton.ButtonPushedFcn = createCallbackFcn(app, @IngresesuarchivoButtonPushed, true);
            app.IngresesuarchivoButton.BackgroundColor = [0.4706 0.6706 0.4];
            app.IngresesuarchivoButton.FontSize = 14;
            app.IngresesuarchivoButton.FontWeight = 'bold';
            app.IngresesuarchivoButton.FontColor = [1 1 1];
            app.IngresesuarchivoButton.Position = [148 448 139 26];
            app.IngresesuarchivoButton.Text = 'Ingrese su archivo';

            % Create XEditFieldLabel_2
            app.XEditFieldLabel_2 = uilabel(app.DerivacionIITab);
            app.XEditFieldLabel_2.HorizontalAlignment = 'right';
            app.XEditFieldLabel_2.FontSize = 16;
            app.XEditFieldLabel_2.FontColor = [0 0.451 0.7412];
            app.XEditFieldLabel_2.Position = [498 500 30 22];
            app.XEditFieldLabel_2.Text = 'X =';

            % Create derivado_2
            app.derivado_2 = uieditfield(app.DerivacionIITab, 'numeric');
            app.derivado_2.FontSize = 16;
            app.derivado_2.FontColor = [0 0.451 0.7412];
            app.derivado_2.Position = [543 500 100 22];
            app.derivado_2.Value = 0.05;

            % Create HEditFieldLabel_2
            app.HEditFieldLabel_2 = uilabel(app.DerivacionIITab);
            app.HEditFieldLabel_2.HorizontalAlignment = 'right';
            app.HEditFieldLabel_2.FontSize = 16;
            app.HEditFieldLabel_2.FontColor = [0 0.451 0.7412];
            app.HEditFieldLabel_2.Position = [497 458 31 22];
            app.HEditFieldLabel_2.Text = 'H =';

            % Create paso_2
            app.paso_2 = uieditfield(app.DerivacionIITab, 'numeric');
            app.paso_2.FontSize = 16;
            app.paso_2.FontColor = [0 0.451 0.7412];
            app.paso_2.Position = [543 458 100 22];
            app.paso_2.Value = 0.01;

            % Create DIFERENCIASFINITASLabel_2
            app.DIFERENCIASFINITASLabel_2 = uilabel(app.DerivacionIITab);
            app.DIFERENCIASFINITASLabel_2.FontSize = 18;
            app.DIFERENCIASFINITASLabel_2.FontColor = [0 0.451 0.7412];
            app.DIFERENCIASFINITASLabel_2.Position = [10 500 205 45];
            app.DIFERENCIASFINITASLabel_2.Text = 'DIFERENCIAS FINITAS ';

            % Create excel_img
            app.excel_img = uibutton(app.DerivacionIITab, 'push');
            app.excel_img.Icon = 'excel-logo.jpg';
            app.excel_img.IconAlignment = 'center';
            app.excel_img.Position = [51 437 80 73];
            app.excel_img.Text = '';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = definitivo

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end