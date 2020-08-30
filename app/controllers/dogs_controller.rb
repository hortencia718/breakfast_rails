class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
        redirect_to dog_path(@dog)
    end

    def show
        # byebug
        @dog = Dog.find(params[:id])
    end


    def edit
        #we want to edit an instance of a dog. 
        #we want to edit the activity. For us to see the activity, we need to see all of the activities 
        #for that particular dog. 
        #we don't need to see ALLLLL the activies of ALLLL the dogs.
        #so we dont need @dog = Dog.all or @activities = Activity.all


        #This means that we are looking up activities of the instance of the dog. Here our Dog has now 
        #become a user(essentially).
        #our dog has access to the instance methods BECAUSE of our macros. our Dog is NOT the joiner model.
        #To edit this, we created an edit.erb view file in the Dog model.
            #we created a collection select
        #To acccess a particular dog you need to find it. 
            #@dog = Dog.find(params[:id]) 
        #go to dogs/:id/edit
        #again the question is, what is the self? When self was called the entire instance was brought up 
        #activities is plural as this is an array with all of them
        #we defined @dog
        #we defined @activities which as stated above we can "chain" into ".activities" bc we have access
        #to the instance based on the macros. this is repeated on purpose


        
        #we have this 
        @dog = Dog.find(params[:id]) 
       
        @activities = @dog.activities

        #which is essentially the below

        #@activities = Dog.find(params[:id]).activities
        #@activities = 2.activities


 #####################################EDIT.ERB IN DOG FOLDER##########################

        #we had to create a form for @dog (one instance )
        #we had to use rails helpers aka SELECT to highlight the
        #activities attribute
        #in line 6 our @activities is actually the activities array and we need 
        #the data of :id
        #we end the form with what the user sees: the name. which is the name
        #of the activity

        

    end



    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params)
        redirect_to dog_path(@dog)


    end


    def destroy
        #we want to find what we are destroying
        #after destroying we redirect to homepage
         #@dog = Dog.find(params[:id])
        
         @dog.delete
            
        # Dog.find(params[:id]).destroy
         redirect_to dogs_path

    end




    private

    def dog_params
        params.require(:dog).permit(:name, :age)
    end
end
