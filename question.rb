class Question
    def questionGenerator()   
      selected_num = []
      inputarr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    # Get array of 2 numbers for question    
      selected_num.push(inputarr.sample)
      selected_num.push(inputarr.sample)
    end
end