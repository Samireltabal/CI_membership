<div class="container">
    <div class="row">        
            <div class="col-md-4 offset-lg-4">
                
                <div class="login col-md-12">
                <h1>Login</h1>
                    <?php echo form_open('users/login'); ?>
                    <div class="form-group">
                        <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1"><i class='fa fa-envelope'></i></span>
                        <input class="form-control" id="email" name="username" type="text" aria-describedby="basic-addon1"  placeholder="Username"/>
                        </div>
                    </div>
 
                    <div class="form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1"><i class='fa fa-key'></i></span>
                        <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
                        </div>    
                    
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1" name='remember'>
                        <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                    </div>
                    <button type="submit" class="btn btn-outline-secondary btn-block">Login</button>
                    </form>
                </div> <!-- login-form -->
            </div> <!-- form col-md-4 -->    
    </div> <!-- row -->
</div> <!-- container -->