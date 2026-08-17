.class public final Lcom/kwad/components/core/innerEc/live/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Yg:Ljava/lang/CharSequence;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/c;->Yg:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/c;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/c;->Yg:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/c;->type:I

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/c;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final sO()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/c;->Yg:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method
