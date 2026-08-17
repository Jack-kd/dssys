.class public interface abstract Lcom/kwad/sdk/lib/ad/desigin/CustomReboundOffsetCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final REBOUND_TYPE_FLING:I = 0x2

.field public static final REBOUND_TYPE_TOUCH:I = 0x1


# virtual methods
.method public abstract rebound(IFI)V
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
.end method
