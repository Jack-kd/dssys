.class public Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/LiveLongConnectionServerException;
.super Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3d8ce1b5bfe4b57eL


# instance fields
.field public final mMaxDelayMs:J

.field public final mMinDelayMs:J


# direct methods
.method public constructor <init>(IILjava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;-><init>(IILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-wide p4, p0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/LiveLongConnectionServerException;->mMinDelayMs:J

    .line 5
    .line 6
    iput-wide p6, p0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/LiveLongConnectionServerException;->mMaxDelayMs:J

    .line 7
    .line 8
    return-void
.end method
