.class interface abstract Landroidx/core/view/DisplayShapeCompat$Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayShapeCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Impl"
.end annotation


# virtual methods
.method public abstract getPath()Landroid/graphics/Path;
.end method

.method public abstract getPlatformDisplayShape()Landroid/view/DisplayShape;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x22
    .end annotation
.end method
