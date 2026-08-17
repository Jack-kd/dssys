.class public Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x28f41bfdb8372b43L


# instance fields
.field public final errorCode:I

.field public final errorMessage:Ljava/lang/String;

.field public final subCode:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorCode:I

    .line 5
    .line 6
    iput p2, p0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->subCode:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;->errorMessage:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
