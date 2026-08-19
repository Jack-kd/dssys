.class public final synthetic Lkotlinx/coroutines/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/D;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p2, p0, Lkotlinx/coroutines/D;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/D;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-boolean v1, p0, Lkotlinx/coroutines/D;->c:Z

    check-cast p1, Lkotlin/coroutines/i;

    check-cast p2, Lkotlin/coroutines/i$b;

    invoke-static {v0, v1, p1, p2}, Lkotlinx/coroutines/F;->a(Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/i;Lkotlin/coroutines/i$b;)Lkotlin/coroutines/i;

    move-result-object p1

    return-object p1
.end method
