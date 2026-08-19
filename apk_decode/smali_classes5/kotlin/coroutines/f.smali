.class public interface abstract Lkotlin/coroutines/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/i$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/f$a;,
        Lkotlin/coroutines/f$b;
    }
.end annotation


# static fields
.field public static final R2:Lkotlin/coroutines/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/coroutines/f$b;->b:Lkotlin/coroutines/f$b;

    sput-object v0, Lkotlin/coroutines/f;->R2:Lkotlin/coroutines/f$b;

    return-void
.end method


# virtual methods
.method public abstract interceptContinuation(Lkotlin/coroutines/e;)Lkotlin/coroutines/e;
.end method

.method public abstract releaseInterceptedContinuation(Lkotlin/coroutines/e;)V
.end method
