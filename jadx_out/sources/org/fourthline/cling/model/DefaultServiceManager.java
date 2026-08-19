package org.fourthline.cling.model;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.state.StateVariableValue;
import org.seamless.util.Exceptions;
import org.seamless.util.Reflections;

/* loaded from: classes5.dex */
public class DefaultServiceManager<T> implements ServiceManager<T> {
    private static Logger log = Logger.getLogger(DefaultServiceManager.class.getName());
    protected final ReentrantLock lock;
    protected PropertyChangeSupport propertyChangeSupport;
    protected final LocalService<T> service;
    protected final Class<T> serviceClass;
    protected T serviceImpl;

    public class DefaultPropertyChangeListener implements PropertyChangeListener {
        public DefaultPropertyChangeListener() {
        }

        @Override // java.beans.PropertyChangeListener
        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            DefaultServiceManager.log.finer("Property change event on local service: " + propertyChangeEvent.getPropertyName());
            if (propertyChangeEvent.getPropertyName().equals(ServiceManager.EVENTED_STATE_VARIABLES)) {
                return;
            }
            String[] strArrFromCommaSeparatedList = ModelUtil.fromCommaSeparatedList(propertyChangeEvent.getPropertyName());
            DefaultServiceManager.log.fine("Changed variable names: " + Arrays.toString(strArrFromCommaSeparatedList));
            try {
                Collection<StateVariableValue> currentState = DefaultServiceManager.this.getCurrentState(strArrFromCommaSeparatedList);
                if (currentState.isEmpty()) {
                    return;
                }
                DefaultServiceManager.this.getPropertyChangeSupport().firePropertyChange(ServiceManager.EVENTED_STATE_VARIABLES, (Object) null, currentState);
            } catch (Exception e2) {
                DefaultServiceManager.log.log(Level.SEVERE, "Error reading state of service after state variable update event: " + Exceptions.unwrap(e2), (Throwable) e2);
            }
        }
    }

    public DefaultServiceManager(LocalService<T> localService) {
        this(localService, null);
    }

    public PropertyChangeListener createPropertyChangeListener(T t2) throws Exception {
        return new DefaultPropertyChangeListener();
    }

    public PropertyChangeSupport createPropertyChangeSupport(T t2) throws Exception {
        Method getterMethod = Reflections.getGetterMethod(t2.getClass(), "propertyChangeSupport");
        if (getterMethod == null || !PropertyChangeSupport.class.isAssignableFrom(getterMethod.getReturnType())) {
            log.fine("Creating new PropertyChangeSupport for service implementation: " + t2.getClass().getName());
            return new PropertyChangeSupport(t2);
        }
        log.fine("Service implementation instance offers PropertyChangeSupport, using that: " + t2.getClass().getName());
        return (PropertyChangeSupport) getterMethod.invoke(t2, null);
    }

    public T createServiceInstance() throws Exception {
        Class<T> cls = this.serviceClass;
        if (cls == null) {
            throw new IllegalStateException("Subclass has to provide service class or override createServiceInstance()");
        }
        try {
            return cls.getConstructor(LocalService.class).newInstance(getService());
        } catch (NoSuchMethodException unused) {
            log.fine("Creating new service implementation instance with no-arg constructor: " + this.serviceClass.getName());
            return this.serviceClass.newInstance();
        }
    }

    @Override // org.fourthline.cling.model.ServiceManager
    public void execute(Command<T> command) throws Exception {
        lock();
        try {
            command.execute(this);
        } finally {
            unlock();
        }
    }

    @Override // org.fourthline.cling.model.ServiceManager
    public Collection<StateVariableValue> getCurrentState() throws Exception {
        lock();
        try {
            Collection<StateVariableValue> initialEventedStateVariableValues = readInitialEventedStateVariableValues();
            if (initialEventedStateVariableValues != null) {
                log.fine("Obtained initial state variable values for event, skipping individual state variable accessors");
                return initialEventedStateVariableValues;
            }
            ArrayList arrayList = new ArrayList();
            for (StateVariable<LocalService> stateVariable : getService().getStateVariables()) {
                if (stateVariable.getEventDetails().isSendEvents()) {
                    StateVariableAccessor accessor = getService().getAccessor(stateVariable);
                    if (accessor == null) {
                        throw new IllegalStateException("No accessor for evented state variable");
                    }
                    arrayList.add(accessor.read(stateVariable, getImplementation()));
                }
            }
            return arrayList;
        } finally {
            unlock();
        }
    }

    @Override // org.fourthline.cling.model.ServiceManager
    public T getImplementation() {
        lock();
        try {
            if (this.serviceImpl == null) {
                init();
            }
            T t2 = this.serviceImpl;
            unlock();
            return t2;
        } catch (Throwable th) {
            unlock();
            throw th;
        }
    }

    public int getLockTimeoutMillis() {
        return 500;
    }

    @Override // org.fourthline.cling.model.ServiceManager
    public PropertyChangeSupport getPropertyChangeSupport() {
        lock();
        try {
            if (this.propertyChangeSupport == null) {
                init();
            }
            PropertyChangeSupport propertyChangeSupport = this.propertyChangeSupport;
            unlock();
            return propertyChangeSupport;
        } catch (Throwable th) {
            unlock();
            throw th;
        }
    }

    @Override // org.fourthline.cling.model.ServiceManager
    public LocalService<T> getService() {
        return this.service;
    }

    public void init() {
        log.fine("No service implementation instance available, initializing...");
        try {
            T tCreateServiceInstance = createServiceInstance();
            this.serviceImpl = tCreateServiceInstance;
            PropertyChangeSupport propertyChangeSupportCreatePropertyChangeSupport = createPropertyChangeSupport(tCreateServiceInstance);
            this.propertyChangeSupport = propertyChangeSupportCreatePropertyChangeSupport;
            propertyChangeSupportCreatePropertyChangeSupport.addPropertyChangeListener(createPropertyChangeListener(this.serviceImpl));
        } catch (Exception e2) {
            throw new RuntimeException("Could not initialize implementation: " + e2, e2);
        }
    }

    public void lock() {
        try {
            if (this.lock.tryLock(getLockTimeoutMillis(), TimeUnit.MILLISECONDS)) {
                if (log.isLoggable(Level.FINEST)) {
                    log.finest("Acquired lock");
                }
            } else {
                throw new RuntimeException("Failed to acquire lock in milliseconds: " + getLockTimeoutMillis());
            }
        } catch (InterruptedException e2) {
            throw new RuntimeException("Failed to acquire lock:" + e2);
        }
    }

    public Collection<StateVariableValue> readInitialEventedStateVariableValues() throws Exception {
        return null;
    }

    public String toString() {
        return "(" + getClass().getSimpleName() + ") Implementation: " + this.serviceImpl;
    }

    public void unlock() {
        if (log.isLoggable(Level.FINEST)) {
            log.finest("Releasing lock");
        }
        this.lock.unlock();
    }

    public DefaultServiceManager(LocalService<T> localService, Class<T> cls) {
        this.lock = new ReentrantLock(true);
        this.service = localService;
        this.serviceClass = cls;
    }

    public Collection<StateVariableValue> getCurrentState(String[] strArr) throws Exception {
        lock();
        try {
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                String strTrim = str.trim();
                StateVariable<LocalService> stateVariable = getService().getStateVariable(strTrim);
                if (stateVariable != null && stateVariable.getEventDetails().isSendEvents()) {
                    StateVariableAccessor accessor = getService().getAccessor(stateVariable);
                    if (accessor == null) {
                        log.warning("Ignoring evented state variable without accessor: " + strTrim);
                    } else {
                        arrayList.add(accessor.read(stateVariable, getImplementation()));
                    }
                } else {
                    log.fine("Ignoring unknown or non-evented state variable: " + strTrim);
                }
            }
            unlock();
            return arrayList;
        } catch (Throwable th) {
            unlock();
            throw th;
        }
    }
}
