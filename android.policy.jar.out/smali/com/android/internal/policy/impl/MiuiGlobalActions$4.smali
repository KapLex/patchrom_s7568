.class Lcom/android/internal/policy/impl/MiuiGlobalActions$4;
.super Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 225
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method
