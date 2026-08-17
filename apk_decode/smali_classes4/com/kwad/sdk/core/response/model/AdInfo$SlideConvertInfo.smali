.class public Lcom/kwad/sdk/core/response/model/AdInfo$SlideConvertInfo;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideConvertInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x752bad9690093a73L


# instance fields
.field public convertAngle:I

.field public convertDistance:I

.field public convertSlideDirection:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "1000"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$SlideConvertInfo;->convertSlideDirection:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
