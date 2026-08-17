.class public final Lcom/kwad/framework/filedownloader/download/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/download/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private aCa:Z

.field private aCb:Ljava/lang/Exception;

.field private aCc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AL()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/download/d$a;->aCc:I

    .line 2
    .line 3
    return v0
.end method

.method public final CC()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/d$a;->aCa:Z

    .line 2
    .line 3
    return v0
.end method

.method public final bw(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/framework/filedownloader/download/d$a;->aCa:Z

    .line 2
    .line 3
    return-void
.end method

.method public final cM(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/framework/filedownloader/download/d$a;->aCc:I

    .line 2
    .line 3
    return-void
.end method

.method public final f(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/d$a;->aCb:Ljava/lang/Exception;

    .line 2
    .line 3
    return-void
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/d$a;->aCb:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object v0
.end method
