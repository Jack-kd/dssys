.class public Lcom/sigmob/sdk/videoAd/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/sigmob/sdk/base/views/n;

.field private final d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Lcom/sigmob/sdk/videoAd/a;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/views/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/f;->i:Z

    iput p1, p0, Lcom/sigmob/sdk/videoAd/f;->a:I

    iput p2, p0, Lcom/sigmob/sdk/videoAd/f;->b:I

    iput p3, p0, Lcom/sigmob/sdk/videoAd/f;->d:I

    iput-object p5, p0, Lcom/sigmob/sdk/videoAd/f;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/videoAd/f;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/videoAd/f;->c:Lcom/sigmob/sdk/base/views/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/views/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/f;->c:Lcom/sigmob/sdk/base/views/n;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/videoAd/f;->h:I

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoAd/a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/f;->j:Lcom/sigmob/sdk/videoAd/a;

    return-void
.end method
