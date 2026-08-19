.class public interface abstract Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceMonitorCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/varbto/utils/performance/DevicePerformanceGrader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PerformanceMonitorCallback"
.end annotation


# virtual methods
.method public abstract onCpuUpdate(FF)V
.end method

.method public abstract onGpuUpdate(F)V
.end method

.method public abstract onMemoryUpdate(F)V
.end method

.method public abstract onThermalUpdate(I)V
.end method
