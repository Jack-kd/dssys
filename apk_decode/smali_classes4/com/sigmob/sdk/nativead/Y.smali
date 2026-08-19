.class public final synthetic Lcom/sigmob/sdk/nativead/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/nativead/y;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/y;ILjava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/Y;->b:Lcom/sigmob/sdk/nativead/y;

    iput p2, p0, Lcom/sigmob/sdk/nativead/Y;->c:I

    iput-object p3, p0, Lcom/sigmob/sdk/nativead/Y;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/sigmob/sdk/nativead/Y;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/Y;->b:Lcom/sigmob/sdk/nativead/y;

    iget v1, p0, Lcom/sigmob/sdk/nativead/Y;->c:I

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/Y;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/Y;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/nativead/y;->a(Lcom/sigmob/sdk/nativead/y;ILjava/util/List;Ljava/lang/String;)V

    return-void
.end method
